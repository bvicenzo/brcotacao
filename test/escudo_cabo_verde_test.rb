require 'test/unit'
require 'date'
require 'brcotacao'

class EscudoCaboVerdeTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.022, :venda => 0.02201}
    assert_equal cotacao_esperada, BrCotacao::EscudoCaboVerde.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::EscudoCaboVerde.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.022, BrCotacao::EscudoCaboVerde.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::EscudoCaboVerde.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02201, BrCotacao::EscudoCaboVerde.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::EscudoCaboVerde.new.venda(Date.new(2011, 12, 10))
    end
  end

end