require 'test/unit'
require 'date'
require 'brcotacao'

class LibraSiriaRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.03347, :venda => 0.03348}
    assert_equal cotacao_esperada, BrCotacao::LibraSiriaRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraSiriaRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.03347, BrCotacao::LibraSiriaRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraSiriaRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.03348, BrCotacao::LibraSiriaRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraSiriaRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end