require 'test/unit'
require 'date'
require 'brcotacao'

class CoroaNorueNorueTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.3152, :venda => 0.3156}
    assert_equal cotacao_esperada, BrCotacao::CoroaNorueNorue.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaNorueNorue.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.3152, BrCotacao::CoroaNorueNorue.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaNorueNorue.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.3156, BrCotacao::CoroaNorueNorue.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaNorueNorue.new.venda(Date.new(2011, 12, 10))
    end
  end

end