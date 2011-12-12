require 'test/unit'
require 'date'
require 'brcotacao'

class NairaNigeriaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.01119, :venda => 0.01122}
    assert_equal cotacao_esperada, BrCotacao::NairaNigeria.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NairaNigeria.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.01119, BrCotacao::NairaNigeria.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NairaNigeria.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.01122, BrCotacao::NairaNigeria.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NairaNigeria.new.venda(Date.new(2011, 12, 10))
    end
  end

end