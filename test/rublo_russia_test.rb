require 'test/unit'
require 'date'
require 'brcotacao'

class RubloRussiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.05758, :venda => 0.05766}
    assert_equal cotacao_esperada, BrCotacao::RubloRussia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RubloRussia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.05758, BrCotacao::RubloRussia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RubloRussia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.05766, BrCotacao::RubloRussia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RubloRussia.new.venda(Date.new(2011, 12, 10))
    end
  end

end