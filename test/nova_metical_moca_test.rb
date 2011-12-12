require 'test/unit'
require 'date'
require 'brcotacao'

class NovaMeticalMocaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.06755, :venda => 0.06894}
    assert_equal cotacao_esperada, BrCotacao::NovaMeticalMoca.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaMeticalMoca.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.06755, BrCotacao::NovaMeticalMoca.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaMeticalMoca.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.06894, BrCotacao::NovaMeticalMoca.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaMeticalMoca.new.venda(Date.new(2011, 12, 10))
    end
  end

end