require 'test/unit'
require 'date'
require 'brcotacao'

class GourdeHaitiTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.04411, :venda => 0.04579}
    assert_equal cotacao_esperada, BrCotacao::GourdeHaiti.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::GourdeHaiti.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.04411, BrCotacao::GourdeHaiti.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::GourdeHaiti.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.04579, BrCotacao::GourdeHaiti.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::GourdeHaiti.new.venda(Date.new(2011, 12, 10))
    end
  end

end