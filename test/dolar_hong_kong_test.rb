require 'test/unit'
require 'date'
require 'brcotacao'

class DolarHongKongTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2329, :venda => 0.233}
    assert_equal cotacao_esperada, BrCotacao::DolarHongKong.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarHongKong.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2329, BrCotacao::DolarHongKong.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarHongKong.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.233, BrCotacao::DolarHongKong.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarHongKong.new.venda(Date.new(2011, 12, 10))
    end
  end

end