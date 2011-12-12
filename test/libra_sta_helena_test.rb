require 'test/unit'
require 'date'
require 'brcotacao'

class LibraStaHelenaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.8339, :venda => 2.8354}
    assert_equal cotacao_esperada, BrCotacao::LibraStaHelena.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraStaHelena.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.8339, BrCotacao::LibraStaHelena.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraStaHelena.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.8354, BrCotacao::LibraStaHelena.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraStaHelena.new.venda(Date.new(2011, 12, 10))
    end
  end

end