require 'test/unit'
require 'date'
require 'brcotacao'

class RupiaSriLankaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.01592, :venda => 0.01596}
    assert_equal cotacao_esperada, BrCotacao::RupiaSriLanka.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaSriLanka.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.01592, BrCotacao::RupiaSriLanka.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaSriLanka.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.01596, BrCotacao::RupiaSriLanka.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaSriLanka.new.venda(Date.new(2011, 12, 10))
    end
  end

end