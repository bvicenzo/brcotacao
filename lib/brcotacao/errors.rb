# encoding: utf-8
module BrCotacao

  # Modulo que contem as classes com os possiveis erros lançados diretamente pelo brcotacao
  #
  # Author::  Bruno Vicenzo
  # Licença:: GPL
  module Errors

    # Classe de erro usada para lançar erros para quando não for possivel fazer conexção com o banco central.
    # O Erro acontecerá provavelmente:
    # * por falta de conexão do computador consumidor dos serviços;
    # * por falta de conexão dos servidores do Banco Central;
    # * por por alguma mudança no endereço do serviço;
    # * ou pelo abandono do serviço por parte do Banco Central.
    class ConexaoMalSucedidaError < RuntimeError

      def initialize
        super("A Conexão não ocorreu corretamente.")
      end

    end

    # Classe usada para lançar erros para quando a biblioteca não receber do Banco central
    # o arquivo contendo as cotações das moedas.
    # Isso geralmente acontece quando a data pesquisada for um feriado, o dia não estiver fechado, fim de semana, ou algum outro
    # dia em que não houveram negociações das moedas.
    class CotacaoNaoEncontradaError < RuntimeError

      def initialize(data)
        super("A cotação não foi encontrada para o dia #{data.strftime('%d/%m/%Y')}.")
      end

    end

  end
end
