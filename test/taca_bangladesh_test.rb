require 'test/unit'
require 'date'
require 'brcotacao'

class TacaBangladeshTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02345, :venda => 0.02348}
    assert_equal cotacao_esperada, BrCotacao::TacaBangladesh.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TacaBangladesh.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02345, BrCotacao::TacaBangladesh.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TacaBangladesh.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02348, BrCotacao::TacaBangladesh.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TacaBangladesh.new.venda(Date.new(2011, 12, 10))
    end
  end

end