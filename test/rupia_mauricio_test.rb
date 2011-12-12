require 'test/unit'
require 'date'
require 'brcotacao'

class RupiaMauricioTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.06185, :venda => 0.0622}
    assert_equal cotacao_esperada, BrCotacao::RupiaMauricio.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaMauricio.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.06185, BrCotacao::RupiaMauricio.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaMauricio.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0622, BrCotacao::RupiaMauricio.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaMauricio.new.venda(Date.new(2011, 12, 10))
    end
  end

end