require 'test/unit'
require 'date'
require 'brcotacao'

class CoroaIslndIslanTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.01521, :venda => 0.01525}
    assert_equal cotacao_esperada, BrCotacao::CoroaIslndIslan.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaIslndIslan.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.01521, BrCotacao::CoroaIslndIslan.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaIslndIslan.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.01525, BrCotacao::CoroaIslndIslan.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaIslndIslan.new.venda(Date.new(2011, 12, 10))
    end
  end

end