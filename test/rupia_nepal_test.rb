require 'test/unit'
require 'date'
require 'brcotacao'

class RupiaNepalTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02188, :venda => 0.02189}
    assert_equal cotacao_esperada, BrCotacao::RupiaNepal.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaNepal.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02188, BrCotacao::RupiaNepal.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaNepal.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02189, BrCotacao::RupiaNepal.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaNepal.new.venda(Date.new(2011, 12, 10))
    end
  end

end