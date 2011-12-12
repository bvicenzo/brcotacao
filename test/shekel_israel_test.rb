require 'test/unit'
require 'date'
require 'brcotacao'

class ShekelIsraelTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.4813, :venda => 0.4826}
    assert_equal cotacao_esperada, BrCotacao::ShekelIsrael.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ShekelIsrael.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.4813, BrCotacao::ShekelIsrael.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ShekelIsrael.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.4826, BrCotacao::ShekelIsrael.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ShekelIsrael.new.venda(Date.new(2011, 12, 10))
    end
  end

end