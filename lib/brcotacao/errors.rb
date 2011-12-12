# encoding: utf-8
module BrCotacao
  module Errors

    class SemConexaoError < RuntimeError
    
      def initialize
        super("Não foi possivel fazer a conexão com o Banco Central do Brasil.")
      end

    end

    class ConexaoMalSucedidaError < RuntimeError
    
      def initialize
        super("A Conexão não ocorreu corretamente.")
      end
    
    end

    class CotacaoNaoEncontradaError < RuntimeError

      def initialize(data)
        super("A cotação não foi encontrada para o dia #{data.strftime('%d/%m/%Y')}.")
      end
  
    end

  end
end
