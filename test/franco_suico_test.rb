require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoSuicoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.9618, :venda => 1.9628}
    assert_equal cotacao_esperada, BrCotacao::FrancoSuico.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoSuico.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.9618, BrCotacao::FrancoSuico.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoSuico.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.9628, BrCotacao::FrancoSuico.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoSuico.new.venda(Date.new(2011, 12, 10))
    end
  end

end