require 'test/unit'
require 'date'
require 'brcotacao'

class GuaraniParaguaiTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0004077, :venda => 0.0004144}
    assert_equal cotacao_esperada, BrCotacao::GuaraniParaguai.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::GuaraniParaguai.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0004077, BrCotacao::GuaraniParaguai.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::GuaraniParaguai.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0004144, BrCotacao::GuaraniParaguai.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::GuaraniParaguai.new.venda(Date.new(2011, 12, 10))
    end
  end

end