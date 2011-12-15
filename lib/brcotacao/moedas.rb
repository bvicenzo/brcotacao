# ecoding: utf-8
module BrCotacao
 

  # Esse Modulo possui os metodos que trazem as cotacoes da Classe moeda que incluir Este moulo
  # A classe que incluir este modulo precisa instanciar um objeto em @dados que permita trazer
  # o código da moeda através da chamada @dados.codigo
  #
  # Author:: Bruno Vicenzo
  # Licença:: GPL
  module Moeda

    FONTE_INFORMACAO = 'http://www4.bcb.gov.br/Download/fechamento/'.freeze
    POSICAO_CODIGO_MOEDA = 1
    POSICAO_VALOR_COMPRA = 4
    POSICAO_VALOR_VENDA  = 5

    # Devolve o valor de compra da moeda no fechamento do dia informado.
    # Parametros:
    # * data_pesquisa
    # Um objeto que represente a data do dia em que se deseja receber o valor de compra da moeda.
    # Este parametro precisa responder para o metodo strftime
    def compra(data_pesquisa)
      cotacao_encontrada = cotacao(data_pesquisa)

      cotacao_encontrada.nil? ? nil : cotacao_encontrada[:compra]
    end

    # Devolve o valor de venda da moeda no fechamento do dia informado.
    # Parametros:
    # * data_pesquisa
    # Um objeto que represente a data do dia em que se deseja receber o valor de venda da moeda.
    # Este parametro precisa responder para o metodo strftime
    def venda(data_pesquisa)
      cotacao_encontrada = cotacao(data_pesquisa)

      cotacao_encontrada.nil? ? nil : cotacao_encontrada[:venda]
    end

    # Devolve o valor de compra e venda em um Hash da moeda no fechamento do dia informado.
    # Parametros:
    # * data_pesquisa
    # Um objeto que represente a data do dia em que se deseja receber o valor de compra da moeda.
    # Este parametro precisa responder para o metodo strftime
    def cotacao(data_pesquisa)
      cotacoes_moeda = dados_cotacoes(data_pesquisa).detect{|dado| dado.first.eql? @dados.codigo}

      cotacoes_moeda.nil? ? nil : {:compra => cotacoes_moeda[1].gsub(',', '.').to_f, :venda => cotacoes_moeda[2].gsub(',', '.').to_f}
    end
  
    private 
    
    # Devolve as cotacoes das moedas em uma matriz onde cada linha contém:
    # * o código da moeda;
    # * o valor de compra da moeda;
    # * e o valor de venda da moeda.
    # Parametros:
    # * data_pesquisa
    # Um objeto que represente a data do dia em que se deseja receber o valor de compra da moeda.
    # Este parametro precisa responder para o metodo strftime
    def dados_cotacoes(data_pesquisa)
      begin
        arquivo_baixar       = data_pesquisa.strftime("%Y%m%d.csv")
        endereco             = URI.parse(FONTE_INFORMACAO + arquivo_baixar)
        conexao              = Net::HTTP.new(endereco.host)
        cotacoes             = conexao.get(endereco.path)
        raise BrCotacao::Errors::CotacaoNaoEncontradaError.new(data_pesquisa) unless cotacoes.msg.eql? 'OK'
        dados_brutos   = cotacoes.body
        
        dados_brutos.lines.map do |linha|
          dados_linha = linha.split(';')

          [dados_linha[POSICAO_CODIGO_MOEDA], dados_linha[POSICAO_VALOR_COMPRA], dados_linha[POSICAO_VALOR_VENDA]]
        end
      rescue SocketError => e
        raise BrCotacao::Errors::ConexaoMalSucedidaError.new
      rescue Exception => e
        raise e
      end
    end    
 
  end

  classes_e_constantes = {"AfeganeAfeganist" => "AFEGANE_AFEGANIST", "RandeAfricaSul" => "RANDE_AFRICA_SUL",
                          "LekAlbaniaRep" => "LEK_ALBANIA_REP", "KwanzaAngola" => "KWANZA_ANGOLA", "GuilderAntilhas" => "GUILDER_ANTILHAS",
                          "RialArabSaudita" => "RIAL_ARAB_SAUDITA", "DinarArgelino" => "DINAR_ARGELINO", "PesoArgentina" => "PESO_ARGENTINA",
                          "DramArmeniaRep" => "DRAM_ARMENIA_REP", "FlorimAruba" => "FLORIM_ARUBA", "DolarAustraliano" => "DOLAR_AUSTRALIANO",
                          "ManatArzebaijao" => "MANAT_ARZEBAIJAO", "DolarBahamas" => "DOLAR_BAHAMAS", "DinarBahrein" => "DINAR_BAHREIN",
                          "TacaBangladesh" => "TACA_BANGLADESH", "DolarBarbados" => "DOLAR_BARBADOS", "RubloBelarus" => "RUBLO_BELARUS",
                          "DolarBelize" => "DOLAR_BELIZE", "DolarBermudas" => "DOLAR_BERMUDAS", "BolivianoBolivia" => "BOLIVIANO_BOLIVIA",
                          "MarcoConvBosnia" => "MARCO_CONV_BOSNIA", "PulaBotswana" => "PULA_BOTSWANA", "RealBrasil" => "REAL_BRASIL",
                          "DolarBrunei" => "DOLAR_BRUNEI", "LevBulgariaRep" => "LEV_BULGARIA_REP", "FrancoBurundi" => "FRANCO_BURUNDI",
                          "NgultrumButao" => "NGULTRUM_BUTAO", "EscudoCaboVerde" => "ESCUDO_CABO_VERDE", "RielCamboja" => "RIEL_CAMBOJA",
                          "DolarCanadense" => "DOLAR_CANADENSE", "RialCatar" => "RIAL_CATAR", "DolarCayman" => "DOLAR_CAYMAN",
                          "TengeCazaquistao" => "TENGE_CAZAQUISTAO", "UnidFomentoChil" => "UNID_FOMENTO_CHIL", "PesoChile" => "PESO_CHILE",
                          "IuanRenmimbiChi" => "IUAN_RENMIMBI_CHI", "DolarCingapura" => "DOLAR_CINGAPURA", "PesoColombia" => "PESO_COLOMBIA",
                          "FrancoComores" => "FRANCO_COMORES", "FrancoCongoles" => "FRANCO_CONGOLES", "WonCoreiaNorte" => "WON_COREIA_NORTE",
                          "WonCoreiaSul" => "WON_COREIA_SUL", "ColonCostaRica" => "COLON_COSTA_RICA", "DinarKwait" => "DINAR_KWAIT",
                          "KunaCroacia" => "KUNA_CROACIA", "PesoCuba" => "PESO_CUBA", "CoroaDinamDinam" => "COROA_DINAM_DINAM",
                          "FrancoDjibuti" => "FRANCO_DJIBUTI", "LibraEgito" => "LIBRA_EGITO", "ColonElSalvador" => "COLON_EL_SALVADOR",
                          "DirhamEmirArabe" => "DIRHAM_EMIR_ARABE", "DolarDosEua" => "DOLAR_DOS_EUA", "BirrEtiopia" => "BIRR_ETIOPIA",
                          "LibraFalkland" => "LIBRA_FALKLAND", "DolarFiji" => "DOLAR_FIJI", "PesoFilipinas" => "PESO_FILIPINAS",
                          "NovoDolarTaiwan" => "NOVO_DOLAR_TAIWAN", "DalasiGambia" => "DALASI_GAMBIA", "CediGana" => "CEDI_GANA",
                          "LariGeorgia" => "LARI_GEORGIA", "LibraGibraltar" => "LIBRA_GIBRALTAR", "QuetzalGuatemala" => "QUETZAL_GUATEMALA",
                          "DolarDaGuiana" => "DOLAR_DA_GUIANA", "FrancoGuine" => "FRANCO_GUINE", "PesoGuineBissau" => "PESO_GUINE_BISSAU",
                          "GourdeHaiti" => "GOURDE_HAITI", "LempiraHonduras" => "LEMPIRA_HONDURAS", "DolarHongKong" => "DOLAR_HONG_KONG",
                          "ForintHungria" => "FORINT_HUNGRIA", "RialIemen" => "RIAL_IEMEN", "RupiaIndia" => "RUPIA_INDIA",
                          "RupiaIndonesia" => "RUPIA_INDONESIA", "RialIranRep" => "RIAL_IRAN_REP", "DinarIraque" => "DINAR_IRAQUE",
                          "CoroaIslndIslan" => "COROA_ISLND_ISLAN", "ShekelIsrael" => "SHEKEL_ISRAEL", "DolarJamaica" => "DOLAR_JAMAICA",
                          "Iene" => "IENE", "DinarJordania" => "DINAR_JORDANIA", "QuipeLaosRep" => "QUIPE_LAOS_REP",
                          "LotiLesoto" => "LOTI_LESOTO", "LatLetoniaRep" => "LAT_LETONIA_REP", "LibraLibano" => "LIBRA_LIBANO",
                          "DolarLiberia" => "DOLAR_LIBERIA", "DinarLibia" => "DINAR_LIBIA", "LitaLituania" => "LITA_LITUANIA",
                          "PatacaMacau" => "PATACA_MACAU", "DinarMacedonia" => "DINAR_MACEDONIA", "AriaryMadagascar" => "ARIARY_MADAGASCAR",
                          "RinggitMalasia" => "RINGGIT_MALASIA", "QuachaMalavi" => "QUACHA_MALAVI", "RufiaMaldivas" => "RUFIA_MALDIVAS",
                          "DirhamMarrocos" => "DIRHAM_MARROCOS", "RupiaMauricio" => "RUPIA_MAURICIO", "NakfaEritreia" => "NAKFA_ERITREIA",
                          "PesoMexico" => "PESO_MEXICO", "QuiateBirmania" => "QUIATE_BIRMANIA", "NovaMeticalMoca" => "NOVA_METICAL_MOCA",
                          "LeuMoldaviaRep" => "LEU_MOLDAVIA_REP", "TugrikMongolia" => "TUGRIK_MONGOLIA", "DolarDaNamibia" => "DOLAR_DA_NAMIBIA",
                          "RupiaNepal" => "RUPIA_NEPAL", "CordobaOuro" => "CORDOBA_OURO", "NairaNigeria" => "NAIRA_NIGERIA",
                          "CoroaNorueNorue" => "COROA_NORUE_NORUE", "DolarNovaZeland" => "DOLAR_NOVA_ZELAND", "RialOma" => "RIAL_OMA",
                          "BalboaPanama" => "BALBOA_PANAMA", "KinaPapuaNGuin" => "KINA_PAPUA_N_GUIN", "RupiaPaquistao" => "RUPIA_PAQUISTAO",
                          "GuaraniParaguai" => "GUARANI_PARAGUAI", "NovoSolPeru" => "NOVO_SOL_PERU", "FrancoCfp" => "FRANCO_CFP",
                          "ZlotyPolonia" => "ZLOTY_POLONIA", "XelimQuenia" => "XELIM_QUENIA", "SomQuirguistao" => "SOM_QUIRGUISTAO",
                          "LibraEsterlina" => "LIBRA_ESTERLINA", "PesoRepDominic" => "PESO_REP_DOMINIC", "NovoLeuRomenia" => "NOVO_LEU_ROMENIA",
                          "FrancoRuanda" => "FRANCO_RUANDA", "RubloRussia" => "RUBLO_RUSSIA", "DolarIlSalomao" => "DOLAR_IL_SALOMAO",
                          "TalaSamoaOc" => "TALA_SAMOA_OC", "LibraStaHelena" => "LIBRA_STA_HELENA", "LeoneSerraLeoa" => "LEONE_SERRA_LEOA",
                          "DinarServioServ" => "DINAR_SERVIO_SERV", "RupiaSeycheles" => "RUPIA_SEYCHELES", "LibraSiriaRep" => "LIBRA_SIRIA_REP",
                          "XelimSomalia" => "XELIM_SOMALIA", "RupiaSriLanka" => "RUPIA_SRI_LANKA", "LilangeniSuazil" => "LILANGENI_SUAZIL",
                          "NovaLibraSudane" => "NOVA_LIBRA_SUDANE", "CoroaSuecaSueci" => "COROA_SUECA_SUECI", "FrancoSuico" => "FRANCO_SUICO",
                          "DolarSuriname" => "DOLAR_SURINAME", "SomoniTadjiquist" => "SOMONI_TADJIQUIST", "BathTailandia" => "BATH_TAILANDIA",
                          "XelimTanzania" => "XELIM_TANZANIA", "CoroaTcheca" => "COROA_TCHECA", "PaangaTonga" => "PAANGA_TONGA",
                          "DolarTrinTobag" => "DOLAR_TRIN_TOBAG", "DinarTunisia" => "DINAR_TUNISIA", "NovoManatTurcom" => "NOVO_MANAT_TURCOM",
                          "NovaLiraTurquia" => "NOVA_LIRA_TURQUIA", "HyrvniaUcrania" => "HYRVNIA_UCRANIA", "XelimUganda" => "XELIM_UGANDA",
                          "PesoUruguaio" => "PESO_URUGUAIO", "SomUzbequistao" => "SOM_UZBEQUISTAO", "VatuVanuatu" => "VATU_VANUATU",
                          "BolivarForteVen" => "BOLIVAR_FORTE_VEN", "DongueVietnan" => "DONGUE_VIETNAN", "QuachaZambia" => "QUACHA_ZAMBIA",
                          "DobraSTomePrin" => "DOBRA_S_TOME_PRIN", "DolarZimbabue" => "DOLAR_ZIMBABUE", "FrancoCfaBceao" => "FRANCO_CFA_BCEAO",
                          "DireitoEspecial" => "DIREITO_ESPECIAL", "DolarCaribeOrie" => "DOLAR_CARIBE_ORIE", "FrancoCfaBeac" => "FRANCO_CFA_BEAC",
                          "Euro" => "EURO", "UnidMonetEurop" => "UNID_MONET_EUROP", "DolarOuro" => "DOLAR_OURO"
                         }
  
  classes_e_constantes.each do |classe, constante|
    self.class_eval %{
      class #{classe}
        
        include Moeda
        
        def initialize
          @dados = OpenStruct.new Constantes::#{constante}
        end
        
      end
    }
  end

end
