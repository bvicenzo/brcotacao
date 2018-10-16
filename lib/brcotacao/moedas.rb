# ecoding: utf-8
require 'csv'
require 'time'
require 'json'

module BrCotacao


  # Esse Modulo possui os metodos que trazem as cotacoes da Classe moeda que incluir Este moulo
  # A classe que incluir este modulo precisa instanciar um objeto em @dados que permita trazer
  # o código da moeda através da chamada @dados.codigo
  #
  # Author:: Bruno Vicenzo
  # Licença:: GPL
  module Moeda
    FONTE_INFORMACAO            = 'http://www4.bcb.gov.br/Download/fechamento/'.freeze
    FONTE_INFORMACAO_TEMPO_REAL = 'https://query1.finance.yahoo.com/v7/finance/quote?'

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
      cotacoes_moeda = dados_cotacoes(data_pesquisa).detect{|dado| dado.first.eql? self.dados.codigo}

      cotacoes_moeda.nil? ? nil : {:compra => cotacoes_moeda[1].gsub(',', '.').to_f, :venda => cotacoes_moeda[2].gsub(',', '.').to_f}
    end

    # Devolve o valor da cotação em tempo real de acordo com o serviço do Yahoo!.
    # É retornado um hash contendo o valor de compra da moeda e a data que foi feita a consulta (dia e horário)
    def cotacao_agora
      endereco             = URI("#{FONTE_INFORMACAO_TEMPO_REAL}symbols=#{dados.simbolo}BRL=X")
      resposta             = Net::HTTP.get_response(endereco)
      raise BrCotacao::Errors::CotacaoAgoraNaoEncontradaError.new(Time.now) unless resposta.msg.eql? 'OK'
      
      result = JSON.parse(resposta.body)
      cotacao = result['quoteResponse']['result'].first

      {:compra => cotacao['regularMarketPrice'].to_f, :data => Time.at(cotacao['regularMarketTime'])}
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
        dados_brutos = busca_dados(data_pesquisa)

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

    def busca_dados(data_pesquisa)
      arquivo_baixar       = data_pesquisa.strftime("%Y%m%d.csv")
      endereco             = URI(FONTE_INFORMACAO + arquivo_baixar)
      cotacoes             = Net::HTTP.get_response(endereco)

      raise BrCotacao::Errors::CotacaoNaoEncontradaError.new(data_pesquisa) unless cotacoes.msg.eql? 'OK'

      cotacoes.body
    end
  end

  moedas = BrCotacao::Configuracao.moedas

  moedas.each do |moeda|
    self.class_eval %{
      class #{moeda[:classe]}

        DADOS = #{moeda[:constante][:dados].inspect}

        attr_reader :dados

        include Moeda

        def initialize
          @dados = OpenStruct.new DADOS
        end

      end
    }
  end
end
