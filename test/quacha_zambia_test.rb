require 'test/unit'
require 'date'
require 'brcotacao'

class QuachaZambiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0003547, :venda => 0.0003562}
    assert_equal cotacao_esperada, BrCotacao::QuachaZambia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuachaZambia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0003547, BrCotacao::QuachaZambia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuachaZambia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0003562, BrCotacao::QuachaZambia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuachaZambia.new.venda(Date.new(2011, 12, 10))
    end
  end

end