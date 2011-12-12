require 'test/unit'
require 'date'
require 'brcotacao'

class XelimTanzaniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.001105, :venda => 0.001133}
    assert_equal cotacao_esperada, BrCotacao::XelimTanzania.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimTanzania.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.001105, BrCotacao::XelimTanzania.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimTanzania.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.001133, BrCotacao::XelimTanzania.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimTanzania.new.venda(Date.new(2011, 12, 10))
    end
  end

end