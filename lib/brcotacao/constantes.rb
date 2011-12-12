# coding: utf-8
module BrCotacao
  # Modulo que contém as constantes com informações sobre as moedas retiradas do site do banco central
  # fonte: http://www4.bcb.gov.br/pec/taxas/batch/tabmoedas.asp?id=tabmoeda
  #
  # Author::   Bruno Vicenzo
  # Licença::  GPL
  module Constantes
  
    AFEGANE_AFEGANIST = {:codigo => '005', :nome => 'AFEGANE AFEGANIST', :simbolo => 'AFN',     :codigo_pais => '0132', :pais => 'AFEGANISTAO',               :tipo => 'A'}
    RANDE_AFRICA_SUL  = {:codigo => '785', :nome => 'RANDE/AFRICA SUL',  :simbolo => 'ZAR',     :codigo_pais => '7560', :pais => 'AFRICA DO SUL',             :tipo => 'A'}
    LEK_ALBANIA_REP   = {:codigo => '490', :nome => 'LEK ALBANIA REP',   :simbolo => 'ALL',     :codigo_pais => '0175', :pais => 'ALBANIA, REPUBLICA  DA',    :tipo => 'A'}
    KWANZA_ANGOLA     = {:codigo => '635', :nome => 'KWANZA/ANGOLA',     :simbolo => 'AOA',     :codigo_pais => '0400', :pais => 'ANGOLA',                    :tipo => 'A'}
    GUILDER_ANTILHAS  = {:codigo => '325', :nome => 'GUILDER ANTILHAS',  :simbolo => 'ANG',     :codigo_pais => '0477', :pais => 'ANTILHAS HOLANDESAS',       :tipo => 'A'}
    RIAL_ARAB_SAUDITA = {:codigo => '820', :nome => 'RIAL/ARAB SAUDITA', :simbolo => 'SAR',     :codigo_pais => '0531', :pais => 'ARABIA SAUDITA',            :tipo => 'A'}
    DINAR_ARGELINO    = {:codigo => '095', :nome => 'DINAR ARGELINO',    :simbolo => 'DZD',     :codigo_pais => '0590', :pais => 'ARGELIA',                   :tipo => 'A'}
    PESO_ARGENTINA    = {:codigo => '706', :nome => 'PESO/ARGENTINA',    :simbolo => 'ARS',     :codigo_pais => '0639', :pais => 'ARGENTINA',                 :tipo => 'A'}
    DRAM_ARMENIA_REP  = {:codigo => '275', :nome => 'DRAM ARMENIA REP',  :simbolo => 'AMD',     :codigo_pais => '0647', :pais => 'ARMENIA, REPUBLICA DA',     :tipo => 'A'}
    FLORIM_ARUBA      = {:codigo => '328', :nome => 'FLORIM/ARUBA',      :simbolo => 'AWG',     :codigo_pais => '0655', :pais => 'ARUBA',                     :tipo => 'A'}
    DOLAR_AUSTRALIANO = {:codigo => '150', :nome => 'DOLAR AUSTRALIANO', :simbolo => 'AUD',     :codigo_pais => '0698', :pais => 'AUSTRALIA',                 :tipo => 'B'}
    MANAT_ARZEBAIJAO  = {:codigo => '607', :nome => 'MANAT ARZEBAIJAO',  :simbolo => 'AZN',     :codigo_pais => '0736', :pais => 'AZERBAIJAO, REPUBLICA DO',  :tipo => 'A'}
    DOLAR_BAHAMAS     = {:codigo => '155', :nome => 'DOLAR/BAHAMAS',     :simbolo => 'BSD',     :codigo_pais => '0779', :pais => 'BAHAMAS, ILHAS',            :tipo => 'A'}
    DINAR_BAHREIN     = {:codigo => '105', :nome => 'DINAR/BAHREIN',     :simbolo => 'BHD',     :codigo_pais => '0809', :pais => 'BAHREIN, ILHAS',            :tipo => 'A'}
    TACA_BANGLADESH   = {:codigo => '905', :nome => 'TACA/BANGLADESH',   :simbolo => 'BDT',     :codigo_pais => '0817', :pais => 'BANGLADESH',                :tipo => 'A'}
    DOLAR_BARBADOS    = {:codigo => '175', :nome => 'DOLAR/BARBADOS',    :simbolo => 'BBD',     :codigo_pais => '0833', :pais => 'BARBADOS',                  :tipo => 'A'}
    RUBLO_BELARUS     = {:codigo => '829', :nome => 'RUBLO BELARUS',     :simbolo => 'BYR',     :codigo_pais => '0850', :pais => 'BELARUS, REPUBLICA DA',     :tipo => 'A'}
    DOLAR_BELIZE      = {:codigo => '180', :nome => 'DOLAR/BELIZE',      :simbolo => 'BZD',     :codigo_pais => '0884', :pais => 'BELIZE',                    :tipo => 'A'}
    DOLAR_BERMUDAS    = {:codigo => '160', :nome => 'DOLAR/BERMUDAS',    :simbolo => 'BMD',     :codigo_pais => '0906', :pais => 'BERMUDAS',                  :tipo => 'A'}
    BOLIVIANO_BOLIVIA = {:codigo => '030', :nome => 'BOLIVIANO/BOLIVIA', :simbolo => 'BOB',     :codigo_pais => '0973', :pais => 'BOLIVIA, ESTADO PLURINACI', :tipo => 'A'}
    MARCO_CONV_BOSNIA = {:codigo => '612', :nome => 'MARCO CONV BOSNIA', :simbolo => 'BAM',     :codigo_pais => '0981', :pais => 'BOSNIA-HERZEGOVINA (REPUB', :tipo => 'A'}
    PULA_BOTSWANA     = {:codigo => '755', :nome => 'PULA/BOTSWANA',     :simbolo => 'BWP',     :codigo_pais => '1015', :pais => 'BOTSUANA',                  :tipo => 'B'}
    REAL_BRASIL       = {:codigo => '790', :nome => 'REAL BRASIL',       :simbolo => 'BRL',     :codigo_pais => '1058', :pais => 'BRASIL',                    :tipo => 'A'}
    DOLAR_BRUNEI      = {:codigo => '185', :nome => 'DOLAR BRUNEI',      :simbolo => 'BND',     :codigo_pais => '1082', :pais => 'BRUNEI',                    :tipo => 'A'}
    LEV_BULGARIA_REP  = {:codigo => '510', :nome => 'LEV/BULGARIA, REP', :simbolo => 'BGN',     :codigo_pais => '1112', :pais => 'BULGARIA, REPUBLICA DA',    :tipo => 'A'}
    FRANCO_BURUNDI    = {:codigo => '365', :nome => 'FRANCO/BURUNDI',    :simbolo => 'BIF',     :codigo_pais => '1155', :pais => 'BURUNDI',                   :tipo => 'A'}
    NGULTRUM_BUTAO    = {:codigo => '665', :nome => 'NGULTRUM/BUTAO',    :simbolo => 'BTN',     :codigo_pais => '1198', :pais => 'BUTAO',                     :tipo => 'A'}
    ESCUDO_CABO_VERDE = {:codigo => '295', :nome => 'ESCUDO/CABO VERDE', :simbolo => 'CVE',     :codigo_pais => '1279', :pais => 'CABO VERDE, REPUBLICA DE',  :tipo => 'A'}
    RIEL_CAMBOJA      = {:codigo => '825', :nome => 'RIEL/CAMBOJA',      :simbolo => 'KHR',     :codigo_pais => '1414', :pais => 'CAMBOJA',                   :tipo => 'A'}
    DOLAR_CANADENSE   = {:codigo => '165', :nome => 'DOLAR CANADENSE',   :simbolo => 'CAD',     :codigo_pais => '1490', :pais => 'CANADA',                    :tipo => 'A'}
    RIAL_CATAR        = {:codigo => '800', :nome => 'RIAL/CATAR',        :simbolo => 'QAR',     :codigo_pais => '1546', :pais => 'CATAR',                     :tipo => 'A'}
    DOLAR_CAYMAN      = {:codigo => '190', :nome => 'DOLAR/CAYMAN',      :simbolo => 'KYD',     :codigo_pais => '1376', :pais => 'CAYMAN, ILHAS',             :tipo => 'B'}
    TENGE_CAZAQUISTAO = {:codigo => '913', :nome => 'TENGE CAZAQUISTAO', :simbolo => 'KZT',     :codigo_pais => '1538', :pais => 'CAZAQUISTAO, REPUBLICA DO', :tipo => 'A'}
    UNID_FOMENTO_CHIL = {:codigo => '916', :nome => 'UNID FOMENTO CHIL', :simbolo => 'CLF',     :codigo_pais => '1589', :pais => 'CHILE',                     :tipo => 'A'}
    PESO_CHILE        = {:codigo => '715', :nome => 'PESO/CHILE',        :simbolo => 'CLP',     :codigo_pais => '1589', :pais => 'CHILE',                     :tipo => 'A'}
    IUAN_RENMIMBI_CHI = {:codigo => '795', :nome => 'IUAN RENMIMBI/CHI', :simbolo => 'CNY',     :codigo_pais => '1600', :pais => 'CHINA, REPUBLICA POPULAR',  :tipo => 'A'}
    DOLAR_CINGAPURA   = {:codigo => '195', :nome => 'DOLAR/CINGAPURA',   :simbolo => 'SGD',     :codigo_pais => '7412', :pais => 'CINGAPURA',                 :tipo => 'A'}
    PESO_COLOMBIA     = {:codigo => '720', :nome => 'PESO/COLOMBIA',     :simbolo => 'COP',     :codigo_pais => '1694', :pais => 'COLOMBIA',                  :tipo => 'A'}
    FRANCO_COMORES    = {:codigo => '368', :nome => 'FRANCO/COMORES',    :simbolo => 'KMF',     :codigo_pais => '1732', :pais => 'COMORES, ILHAS',            :tipo => 'A'}
    FRANCO_CONGOLES   = {:codigo => '363', :nome => 'FRANCO CONGOLES',   :simbolo => 'CDF',     :codigo_pais => '8885', :pais => 'CONGO, REPUBLICA DEMOCRAT', :tipo => 'A'}
    WON_COREIA_NORTE  = {:codigo => '925', :nome => 'WON/COREIA NORTE',  :simbolo => 'KPW',     :codigo_pais => '1872', :pais => 'COREIA (DO NORTE), REP.PO', :tipo => 'A'}
    WON_COREIA_SUL    = {:codigo => '930', :nome => 'WON/COREIA SUL',    :simbolo => 'KRW',     :codigo_pais => '1902', :pais => 'COREIA (DO SUL), REPUBLIC', :tipo => 'A'}
    COLON_COSTA_RICA  = {:codigo => '040', :nome => 'COLON/COSTA RICA',  :simbolo => 'CRC',     :codigo_pais => '1961', :pais => 'COSTA RICA',                :tipo => 'A'}
    DINAR_KWAIT       = {:codigo => '100', :nome => 'DINAR/KWAIT',       :simbolo => 'KWD',     :codigo_pais => '1988', :pais => 'COVEITE',                   :tipo => 'A'}
    KUNA_CROACIA      = {:codigo => '779', :nome => 'KUNA/CROACIA',      :simbolo => 'HRK',     :codigo_pais => '1953', :pais => 'CROACIA (REPUBLICA DA)',    :tipo => 'A'}
    PESO_CUBA         = {:codigo => '725', :nome => 'PESO/CUBA',         :simbolo => 'CUP',     :codigo_pais => '1996', :pais => 'CUBA',                      :tipo => 'A'}
    COROA_DINAM_DINAM = {:codigo => '055', :nome => 'COROA DINAM/DINAM', :simbolo => 'DKK',     :codigo_pais => '2321', :pais => 'DINAMARCA',                 :tipo => 'A'}
    FRANCO_DJIBUTI    = {:codigo => '390', :nome => 'FRANCO/DJIBUTI',    :simbolo => 'DJF',     :codigo_pais => '7838', :pais => 'DJIBUTI',                   :tipo => 'A'}
    LIBRA_EGITO       = {:codigo => '535', :nome => 'LIBRA/EGITO',       :simbolo => 'EGP',     :codigo_pais => '2402', :pais => 'EGITO',                     :tipo => 'A'}
    COLON_EL_SALVADOR = {:codigo => '045', :nome => 'COLON/EL SALVADOR', :simbolo => 'SVC',     :codigo_pais => '6874', :pais => 'EL SALVADOR',               :tipo => 'A'}
    DIRHAM_EMIR_ARABE = {:codigo => '145', :nome => 'DIRHAM/EMIR.ARABE', :simbolo => 'AED',     :codigo_pais => '2445', :pais => 'EMIRADOS ARABES UNIDOS',    :tipo => 'A'}
    DOLAR_DOS_EUA     = {:codigo => '220', :nome => 'DOLAR DOS EUA',     :simbolo => 'USD',     :codigo_pais => '2496', :pais => 'ESTADOS UNIDOS',            :tipo => 'A'}
    BIRR_ETIOPIA      = {:codigo => '009', :nome => 'BIRR/ETIOPIA',      :simbolo => 'ETB',     :codigo_pais => '2534', :pais => 'ETIOPIA',                   :tipo => 'A'}
    LIBRA_FALKLAND    = {:codigo => '545', :nome => 'LIBRA/FALKLAND',    :simbolo => 'FKP',     :codigo_pais => '2550', :pais => 'FALKLAND (ILHAS MALVINAS)', :tipo => 'B'}
    DOLAR_FIJI        = {:codigo => '200', :nome => 'DOLAR FIJI',        :simbolo => 'FJD',     :codigo_pais => '8702', :pais => 'FIJI',                      :tipo => 'B'}
    PESO_FILIPINAS    = {:codigo => '735', :nome => 'PESO/FILIPINAS',    :simbolo => 'PHP',     :codigo_pais => '2674', :pais => 'FILIPINAS',                 :tipo => 'A'}
    NOVO_DOLAR_TAIWAN = {:codigo => '640', :nome => 'NOVO DOLAR/TAIWAN', :simbolo => 'TWD',     :codigo_pais => '1619', :pais => 'FORMOSA (TAIWAN)',          :tipo => 'A'}
    DALASI_GAMBIA     = {:codigo => '090', :nome => 'DALASI/GAMBIA',     :simbolo => 'GMD',     :codigo_pais => '2852', :pais => 'GAMBIA',                    :tipo => 'A'}
    CEDI_GANA         = {:codigo => '035', :nome => 'CEDI GANA',         :simbolo => 'GHS',     :codigo_pais => '2895', :pais => 'GANA',                      :tipo => 'A'}
    LARI_GEORGIA      = {:codigo => '482', :nome => 'LARI GEORGIA',      :simbolo => 'GEL',     :codigo_pais => '2917', :pais => 'GEORGIA, REPUBLICA DA',     :tipo => 'A'}
    LIBRA_GIBRALTAR   = {:codigo => '530', :nome => 'LIBRA/GIBRALTAR',   :simbolo => 'GIP',     :codigo_pais => '2933', :pais => 'GIBRALTAR',                 :tipo => 'B'}
    QUETZAL_GUATEMALA = {:codigo => '770', :nome => 'QUETZAL/GUATEMALA', :simbolo => 'GTQ',     :codigo_pais => '3174', :pais => 'GUATEMALA',                 :tipo => 'A'}
    DOLAR_DA_GUIANA   = {:codigo => '170', :nome => 'DOLAR DA GUIANA',   :simbolo => 'GYD',     :codigo_pais => '3379', :pais => 'GUIANA',                    :tipo => 'A'}
    FRANCO_GUINE      = {:codigo => '398', :nome => 'FRANCO/GUINE',      :simbolo => 'GNF',     :codigo_pais => '3298', :pais => 'GUINE',                     :tipo => 'A'}
    PESO_GUINE_BISSAU = {:codigo => '738', :nome => 'PESO/GUINE BISSAU', :simbolo => 'GWP',     :codigo_pais => '3344', :pais => 'GUINE-BISSAU',              :tipo => 'A'}
    GOURDE_HAITI      = {:codigo => '440', :nome => 'GOURDE/HAITI',      :simbolo => 'HTG',     :codigo_pais => '3417', :pais => 'HAITI',                     :tipo => 'A'}
    LEMPIRA_HONDURAS  = {:codigo => '495', :nome => 'LEMPIRA/HONDURAS',  :simbolo => 'HNL',     :codigo_pais => '3450', :pais => 'HONDURAS',                  :tipo => 'A'}
    DOLAR_HONG_KONG   = {:codigo => '205', :nome => 'DOLAR/HONG-KONG',   :simbolo => 'HKD',     :codigo_pais => '3514', :pais => 'HONG KONG',                 :tipo => 'A'}
    FORINT_HUNGRIA    = {:codigo => '345', :nome => 'FORINT/HUNGRIA',    :simbolo => 'HUF',     :codigo_pais => '3557', :pais => 'HUNGRIA, REPUBLICA DA',     :tipo => 'A'}
    RIAL_IEMEN        = {:codigo => '810', :nome => 'RIAL/IEMEN',        :simbolo => 'YER',     :codigo_pais => '3573', :pais => 'IEMEN',                     :tipo => 'A'}
    RUPIA_INDIA       = {:codigo => '860', :nome => 'RUPIA/INDIA',       :simbolo => 'INR',     :codigo_pais => '3611', :pais => 'INDIA',                     :tipo => 'A'}
    RUPIA_INDONESIA   = {:codigo => '865', :nome => 'RUPIA/INDONESIA',   :simbolo => 'IDR',     :codigo_pais => '3654', :pais => 'INDONESIA',                 :tipo => 'A'}
    RIAL_IRAN_REP     = {:codigo => '815', :nome => 'RIAL/IRAN, REP',    :simbolo => 'IRR',     :codigo_pais => '3727', :pais => 'IRA, REPUBLICA ISLAMICA D', :tipo => 'A'}
    DINAR_IRAQUE      = {:codigo => '115', :nome => 'DINAR/IRAQUE',      :simbolo => 'IQD',     :codigo_pais => '3697', :pais => 'IRAQUE',                    :tipo => 'A'}
    COROA_ISLND_ISLAN = {:codigo => '060', :nome => 'COROA ISLND/ISLAN', :simbolo => 'ISK',     :codigo_pais => '3794', :pais => 'ISLANDIA',                  :tipo => 'A'}
    SHEKEL_ISRAEL     = {:codigo => '880', :nome => 'SHEKEL/ISRAEL',     :simbolo => 'ILS',     :codigo_pais => '3832', :pais => 'ISRAEL',                    :tipo => 'A'}
    DOLAR_JAMAICA     = {:codigo => '230', :nome => 'DOLAR/JAMAICA',     :simbolo => 'JMD',     :codigo_pais => '3913', :pais => 'JAMAICA',                   :tipo => 'A'}
    IENE              = {:codigo => '470', :nome => 'IENE',              :simbolo => 'JPY',     :codigo_pais => '3999', :pais => 'JAPAO',                     :tipo => 'A'}
    DINAR_JORDANIA    = {:codigo => '125', :nome => 'DINAR/JORDANIA',    :simbolo => 'JOD',     :codigo_pais => '4030', :pais => 'JORDANIA',                  :tipo => 'A'}
    QUIPE_LAOS_REP    = {:codigo => '780', :nome => 'QUIPE/LAOS, REP',   :simbolo => 'LAK',     :codigo_pais => '4200', :pais => 'LAOS, REP.POP.DEMOCR.DO',   :tipo => 'A'}
    LOTI_LESOTO       = {:codigo => '603', :nome => 'LOTI/LESOTO',       :simbolo => 'LSL',     :codigo_pais => '4260', :pais => 'LESOTO',                    :tipo => 'A'}
    LAT_LETONIA_REP   = {:codigo => '485', :nome => 'LAT/LETONIA, REP',  :simbolo => 'LVL',     :codigo_pais => '4278', :pais => 'LETONIA, REPUBLICA DA',     :tipo => 'A'}
    LIBRA_LIBANO      = {:codigo => '560', :nome => 'LIBRA/LIBANO',      :simbolo => 'LBP',     :codigo_pais => '4316', :pais => 'LIBANO',                    :tipo => 'A'}
    DOLAR_LIBERIA     = {:codigo => '235', :nome => 'DOLAR LIBERIA',     :simbolo => 'LRD',     :codigo_pais => '4340', :pais => 'LIBERIA',                   :tipo => 'A'}
    DINAR_LIBIA       = {:codigo => '130', :nome => 'DINAR/LIBIA',       :simbolo => 'LYD',     :codigo_pais => '4383', :pais => 'LIBIA',                     :tipo => 'A'}
    LITA_LITUANIA     = {:codigo => '601', :nome => 'LITA/LITUANIA',     :simbolo => 'LTL',     :codigo_pais => '4421', :pais => 'LITUANIA, REPUBLICA DA',    :tipo => 'A'}
    PATACA_MACAU      = {:codigo => '685', :nome => 'PATACA/MACAU',      :simbolo => 'MOP',     :codigo_pais => '4472', :pais => 'MACAU',                     :tipo => 'A'}
    DINAR_MACEDONIA   = {:codigo => '132', :nome => 'DINAR/MACEDONIA',   :simbolo => 'MKD',     :codigo_pais => '4499', :pais => 'MACEDONIA, ANT.REP.IUGOSL', :tipo => 'A'}
    ARIARY_MADAGASCAR = {:codigo => '406', :nome => 'ARIARY MADAGASCAR', :simbolo => 'MGA',     :codigo_pais => '4502', :pais => 'MADAGASCAR',                :tipo => 'A'}
    RINGGIT_MALASIA   = {:codigo => '828', :nome => 'RINGGIT/MALASIA',   :simbolo => 'MYR',     :codigo_pais => '4553', :pais => 'MALASIA',                   :tipo => 'A'}
    QUACHA_MALAVI     = {:codigo => '760', :nome => 'QUACHA/MALAVI',     :simbolo => 'MWK',     :codigo_pais => '4588', :pais => 'MALAVI',                    :tipo => 'A'}
    RUFIA_MALDIVAS    = {:codigo => '870', :nome => 'RUFIA/MALDIVAS',    :simbolo => 'MVR',     :codigo_pais => '4618', :pais => 'MALDIVAS',                  :tipo => 'A'}
    DIRHAM_MARROCOS   = {:codigo => '139', :nome => 'DIRHAM/MARROCOS',   :simbolo => 'MAD',     :codigo_pais => '4740', :pais => 'MARROCOS',                  :tipo => 'A'}
    RUPIA_MAURICIO    = {:codigo => '840', :nome => 'RUPIA/MAURICIO',    :simbolo => 'MUR',     :codigo_pais => '4855', :pais => 'MAURICIO',                  :tipo => 'A'}
    NAKFA_ERITREIA    = {:codigo => '625', :nome => 'NAKFA ERITREIA',    :simbolo => 'ERN',     :codigo_pais => '4880', :pais => 'MAURITANIA',                :tipo => 'A'}
    PESO_MEXICO       = {:codigo => '741', :nome => 'PESO/MEXICO',       :simbolo => 'MXN',     :codigo_pais => '4936', :pais => 'MEXICO',                    :tipo => 'A'}
    QUIATE_BIRMANIA   = {:codigo => '775', :nome => 'QUIATE/BIRMANIA',   :simbolo => 'MMK',     :codigo_pais => '0930', :pais => 'MIANMAR (BIRMANIA)',        :tipo => 'A'}
    NOVA_METICAL_MOCA = {:codigo => '622', :nome => 'NOVA METICAL/MOCA', :simbolo => 'MZN',     :codigo_pais => '5053', :pais => 'MOCAMBIQUE',                :tipo => 'A'}
    LEU_MOLDAVIA_REP  = {:codigo => '503', :nome => 'LEU/MOLDAVIA, REP', :simbolo => 'MDL',     :codigo_pais => '4944', :pais => 'MOLDAVIA, REPUBLICA DA',    :tipo => 'A'}
    TUGRIK_MONGOLIA   = {:codigo => '915', :nome => 'TUGRIK/MONGOLIA',   :simbolo => 'MNT',     :codigo_pais => '4979', :pais => 'MONGOLIA',                  :tipo => 'A'}
    DOLAR_DA_NAMIBIA  = {:codigo => '173', :nome => 'DOLAR DA NAMIBIA',  :simbolo => 'NAD',     :codigo_pais => '5070', :pais => 'NAMIBIA',                   :tipo => 'A'}
    RUPIA_NEPAL       = {:codigo => '845', :nome => 'RUPIA/NEPAL',       :simbolo => 'NPR',     :codigo_pais => '5177', :pais => 'NEPAL',                     :tipo => 'A'}
    CORDOBA_OURO      = {:codigo => '051', :nome => 'CORDOBA OURO',      :simbolo => 'NIO',     :codigo_pais => '5215', :pais => 'NICARAGUA',                 :tipo => 'A'}
    NAIRA_NIGERIA     = {:codigo => '630', :nome => 'NAIRA/NIGERIA',     :simbolo => 'NGN',     :codigo_pais => '5282', :pais => 'NIGERIA',                   :tipo => 'A'}
    COROA_NORUE_NORUE = {:codigo => '065', :nome => 'COROA NORUE/NORUE', :simbolo => 'NOK',     :codigo_pais => '5380', :pais => 'NORUEGA',                   :tipo => 'A'}
    DOLAR_NOVA_ZELAND = {:codigo => '245', :nome => 'DOLAR/NOVA ZELAND', :simbolo => 'NZD',     :codigo_pais => '5487', :pais => 'NOVA ZELANDIA',             :tipo => 'B'}
    RIAL_OMA          = {:codigo => '805', :nome => 'RIAL/OMA',          :simbolo => 'OMR',     :codigo_pais => '5568', :pais => 'OMA',                       :tipo => 'A'}
    BALBOA_PANAMA     = {:codigo => '020', :nome => 'BALBOA/PANAMA',     :simbolo => 'PAB',     :codigo_pais => '5800', :pais => 'PANAMA',                    :tipo => 'A'}
    KINA_PAPUA_N_GUIN = {:codigo => '778', :nome => 'KINA/PAPUA N GUIN', :simbolo => 'PGK',     :codigo_pais => '5452', :pais => 'PAPUA NOVA GUINE',          :tipo => 'B'}
    RUPIA_PAQUISTAO   = {:codigo => '875', :nome => 'RUPIA/PAQUISTAO',   :simbolo => 'PKR',     :codigo_pais => '5762', :pais => 'PAQUISTAO',                 :tipo => 'A'}
    GUARANI_PARAGUAI  = {:codigo => '450', :nome => 'GUARANI/PARAGUAI',  :simbolo => 'PYG',     :codigo_pais => '5860', :pais => 'PARAGUAI',                  :tipo => 'A'}
    NOVO_SOL_PERU     = {:codigo => '660', :nome => 'NOVO SOL/PERU',     :simbolo => 'PEN',     :codigo_pais => '5894', :pais => 'PERU',                      :tipo => 'A'}
    FRANCO_CFP        = {:codigo => '380', :nome => 'FRANCO CFP',        :simbolo => 'XPF',     :codigo_pais => '5991', :pais => 'POLINESIA FRANCESA',        :tipo => 'A'}
    ZLOTY_POLONIA     = {:codigo => '975', :nome => 'ZLOTY/POLONIA',     :simbolo => 'PLN',     :codigo_pais => '6033', :pais => 'POLONIA, REPUBLICA DA',     :tipo => 'A'}
    XELIM_QUENIA      = {:codigo => '950', :nome => 'XELIM/QUENIA',      :simbolo => 'KES',     :codigo_pais => '6238', :pais => 'QUENIA',                    :tipo => 'A'}
    SOM_QUIRGUISTAO   = {:codigo => '892', :nome => 'SOM QUIRGUISTAO',   :simbolo => 'KGS',     :codigo_pais => '6254', :pais => 'QUIRGUIZ, REPUBLICA',       :tipo => 'A'}
    LIBRA_ESTERLINA   = {:codigo => '540', :nome => 'LIBRA ESTERLINA',   :simbolo => 'GBP',     :codigo_pais => '6289', :pais => 'REINO UNIDO',               :tipo => 'B'}
    PESO_REP_DOMINIC  = {:codigo => '730', :nome => 'PESO/REP. DOMINIC', :simbolo => 'DOP',     :codigo_pais => '6475', :pais => 'REPUBLICA DOMINICANA',      :tipo => 'A'}
    NOVO_LEU_ROMENIA  = {:codigo => '506', :nome => 'NOVO LEU/ROMENIA',  :simbolo => 'RON',     :codigo_pais => '6700', :pais => 'ROMENIA',                   :tipo => 'A'}
    FRANCO_RUANDA     = {:codigo => '420', :nome => 'FRANCO/RUANDA',     :simbolo => 'RWF',     :codigo_pais => '6750', :pais => 'RUANDA',                    :tipo => 'A'}
    RUBLO_RUSSIA      = {:codigo => '830', :nome => 'RUBLO/RUSSIA',      :simbolo => 'RUB',     :codigo_pais => '6769', :pais => 'RUSSIA, FEDERACAO DA',      :tipo => 'A'}
    DOLAR_IL_SALOMAO  = {:codigo => '250', :nome => 'DOLAR/IL SALOMAO',  :simbolo => 'SBD',     :codigo_pais => '6777', :pais => 'SALOMAO, ILHAS',            :tipo => 'A'}
    TALA_SAMOA_OC     = {:codigo => '911', :nome => 'TALA SAMOA OC',     :simbolo => 'WST',     :codigo_pais => '6904', :pais => 'SAMOA',                     :tipo => 'A'}
    LIBRA_STA_HELENA  = {:codigo => '570', :nome => 'LIBRA/STA HELENA',  :simbolo => 'SHP',     :codigo_pais => '7102', :pais => 'SANTA HELENA',              :tipo => 'B'}
    LEONE_SERRA_LEOA  = {:codigo => '500', :nome => 'LEONE/SERRA LEOA',  :simbolo => 'SLL',     :codigo_pais => '7358', :pais => 'SERRA LEOA',                :tipo => 'A'}
    DINAR_SERVIO_SERV = {:codigo => '133', :nome => 'DINAR SERVIO SERV', :simbolo => 'RSD',     :codigo_pais => '7370', :pais => 'SERVIA',                    :tipo => 'A'}
    RUPIA_SEYCHELES   = {:codigo => '850', :nome => 'RUPIA/SEYCHELES',   :simbolo => 'SCR',     :codigo_pais => '7315', :pais => 'SEYCHELLES',                :tipo => 'A'}
    LIBRA_SIRIA_REP   = {:codigo => '575', :nome => 'LIBRA/SIRIA, REP',  :simbolo => 'SYP',     :codigo_pais => '7447', :pais => 'SIRIA, REPUBLICA ARABE DA', :tipo => 'A'}
    XELIM_SOMALIA     = {:codigo => '960', :nome => 'XELIM/SOMALIA',     :simbolo => 'SOS',     :codigo_pais => '7480', :pais => 'SOMALIA',                   :tipo => 'A'}
    RUPIA_SRI_LANKA   = {:codigo => '855', :nome => 'RUPIA/SRI LANKA',   :simbolo => 'LKR',     :codigo_pais => '7501', :pais => 'SRI LANKA',                 :tipo => 'A'}
    LILANGENI_SUAZIL  = {:codigo => '585', :nome => 'LILANGENI/SUAZIL',  :simbolo => 'SZL',     :codigo_pais => '7544', :pais => 'SUAZILANDIA',               :tipo => 'A'}
    NOVA_LIBRA_SUDANE = {:codigo => '134', :nome => 'NOVA LIBRA SUDANE', :simbolo => 'SDG',     :codigo_pais => '7595', :pais => 'SUDAO',                     :tipo => 'A'}
    COROA_SUECA_SUECI = {:codigo => '070', :nome => 'COROA SUECA/SUECI', :simbolo => 'SEK',     :codigo_pais => '7641', :pais => 'SUECIA',                    :tipo => 'A'}
    FRANCO_SUICO      = {:codigo => '425', :nome => 'FRANCO SUICO',      :simbolo => 'CHF',     :codigo_pais => '7676', :pais => 'SUICA',                     :tipo => 'A'}
    DOLAR_SURINAME    = {:codigo => '255', :nome => 'DOLAR/SURINAME',    :simbolo => 'SRD',     :codigo_pais => '7706', :pais => 'SURINAME',                  :tipo => 'A'}
    SOMONI_TADJIQUIST = {:codigo => '835', :nome => 'SOMONI TADJIQUIST', :simbolo => 'TJS',     :codigo_pais => '7722', :pais => 'TADJIQUISTAO, REPUBLICA D', :tipo => 'A'}
    BATH_TAILANDIA    = {:codigo => '015', :nome => 'BATH/TAILANDIA',    :simbolo => 'THB',     :codigo_pais => '7765', :pais => 'TAILANDIA',                 :tipo => 'A'}
    XELIM_TANZANIA    = {:codigo => '946', :nome => 'XELIM/TANZANIA',    :simbolo => 'TZS',     :codigo_pais => '7803', :pais => 'TANZANIA, REP.UNIDA DA',    :tipo => 'A'}
    COROA_TCHECA      = {:codigo => '075', :nome => 'COROA TCHECA',      :simbolo => 'CZK',     :codigo_pais => '7919', :pais => 'TCHECA, REPUBLICA',         :tipo => 'A'}
    PAANGA_TONGA      = {:codigo => '680', :nome => 'PAANGA/TONGA',      :simbolo => 'TOP',     :codigo_pais => '8109', :pais => 'TONGA',                     :tipo => 'B'}
    DOLAR_TRIN_TOBAG  = {:codigo => '210', :nome => 'DOLAR/TRIN. TOBAG', :simbolo => 'TTD',     :codigo_pais => '8150', :pais => 'TRINIDAD E TOBAGO',         :tipo => 'A'}
    DINAR_TUNISIA     = {:codigo => '135', :nome => 'DINAR/TUNISIA',     :simbolo => 'TND',     :codigo_pais => '8206', :pais => 'TUNISIA',                   :tipo => 'A'}
    NOVO_MANAT_TURCOM = {:codigo => '608', :nome => 'NOVO MANAT TURCOM', :simbolo => 'TMT',     :codigo_pais => '8249', :pais => 'TURCOMENISTAO, REPUBLICA',  :tipo => 'A'}
    NOVA_LIRA_TURQUIA = {:codigo => '642', :nome => 'NOVA LIRA/TURQUIA', :simbolo => 'TRY',     :codigo_pais => '8273', :pais => 'TURQUIA',                   :tipo => 'A'}
    HYRVNIA_UCRANIA   = {:codigo => '460', :nome => 'HYRVNIA UCRANIA',   :simbolo => 'UAH',     :codigo_pais => '8311', :pais => 'UCRANIA',                   :tipo => 'A'}
    XELIM_UGANDA      = {:codigo => '955', :nome => 'XELIM/UGANDA',      :simbolo => 'UGX',     :codigo_pais => '8338', :pais => 'UGANDA',                    :tipo => 'A'}
    PESO_URUGUAIO     = {:codigo => '745', :nome => 'PESO/URUGUAIO',     :simbolo => 'UYU',     :codigo_pais => '8451', :pais => 'URUGUAI',                   :tipo => 'A'}
    SOM_UZBEQUISTAO   = {:codigo => '893', :nome => 'SOM UZBEQUISTAO',   :simbolo => 'UZS',     :codigo_pais => '8478', :pais => 'UZBEQUISTAO, REPUBLICA DO', :tipo => 'A'}
    VATU_VANUATU      = {:codigo => '920', :nome => 'VATU VANUATU',      :simbolo => 'VUV',     :codigo_pais => '5517', :pais => 'VANUATU',                   :tipo => 'A'}
    BOLIVAR_FORTE_VEN = {:codigo => '026', :nome => 'BOLIVAR FORTE/VEN', :simbolo => 'VEF',     :codigo_pais => '8508', :pais => 'VENEZUELA',                 :tipo => 'A'}
    DONGUE_VIETNAN    = {:codigo => '260', :nome => 'DONGUE/VIETNAN',    :simbolo => 'VND',     :codigo_pais => '8583', :pais => 'VIETNA',                    :tipo => 'A'}
    QUACHA_ZAMBIA     = {:codigo => '765', :nome => 'QUACHA/ZAMBIA',     :simbolo => 'ZMK',     :codigo_pais => '8907', :pais => 'ZAMBIA',                    :tipo => 'A'}
    DOBRA_S_TOME_PRIN = {:codigo => '148', :nome => 'DOBRA S TOME PRIN', :simbolo => 'STD',     :codigo_pais => '6653', :pais => 'ZIMBABUE',                  :tipo => 'A'}
    DOLAR_ZIMBABUE    = {:codigo => '217', :nome => 'DOLAR ZIMBABUE',    :simbolo => 'ZWL',     :codigo_pais => '6653', :pais => 'ZIMBABUE',                  :tipo => 'A'}
    FRANCO_CFA_BCEAO  = {:codigo => '372', :nome => 'FRANCO CFA BCEAO',  :simbolo => 'XOF',     :codigo_pais => '0000', :pais => 'INDEFINIDO',                :tipo => 'A'}
    DIREITO_ESPECIAL  = {:codigo => '138', :nome => 'DIREITO ESPECIAL',  :simbolo => 'SDR',     :codigo_pais => '0000', :pais => 'INDEFINIDO',                :tipo => 'B'}
    DOLAR_CARIBE_ORIE = {:codigo => '215', :nome => 'DOLAR CARIBE ORIE', :simbolo => 'XCD',     :codigo_pais => '0000', :pais => 'INDEFINIDO',                :tipo => 'A'}
    FRANCO_CFA_BEAC   = {:codigo => '370', :nome => 'FRANCO CFA BEAC',   :simbolo => 'XAF',     :codigo_pais => '0000', :pais => 'INDEFINIDO',                :tipo => 'A'}
    EURO              = {:codigo => '978', :nome => 'EURO',              :simbolo => 'EUR',     :codigo_pais => '0000', :pais => 'INDEFINIDO',                :tipo => 'B'}
    UNID_MONET_EUROP  = {:codigo => '918', :nome => 'UNID.MONET.EUROP.', :simbolo => 'XEU',     :codigo_pais => '0000', :pais => 'INDEFINIDO',                :tipo => 'B'}
    DOLAR_OURO        = {:codigo => '998', :nome => 'DOLAR OURO',        :simbolo => 'XAU',     :codigo_pais => '0000', :pais => 'INDEFINIDO',                :tipo => 'A'}

  end
end
