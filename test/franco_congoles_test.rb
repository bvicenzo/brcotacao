require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoCongolesTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.002025, :venda => 0.002025}
    assert_equal cotacao_esperada, BrCotacao::FrancoCongoles.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCongoles.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.002025, BrCotacao::FrancoCongoles.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCongoles.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.002025, BrCotacao::FrancoCongoles.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCongoles.new.venda(Date.new(2011, 12, 10))
    end
  end

end