require 'test/unit'
require 'date'
require 'brcotacao'

class XelimQueniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02026, :venda => 0.02029}
    assert_equal cotacao_esperada, BrCotacao::XelimQuenia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimQuenia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02026, BrCotacao::XelimQuenia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimQuenia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02029, BrCotacao::XelimQuenia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimQuenia.new.venda(Date.new(2011, 12, 10))
    end
  end

end