require 'test/unit'
require 'date'
require 'brcotacao'

class XelimUgandaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0007352, :venda => 0.0007385}
    assert_equal cotacao_esperada, BrCotacao::XelimUganda.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimUganda.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0007352, BrCotacao::XelimUganda.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimUganda.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0007385, BrCotacao::XelimUganda.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimUganda.new.venda(Date.new(2011, 12, 10))
    end
  end

end