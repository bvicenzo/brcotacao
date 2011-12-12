require 'test/unit'
require 'date'
require 'brcotacao'

class DinarKwaitTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 6.5167, :venda => 6.5665}
    assert_equal cotacao_esperada, BrCotacao::DinarKwait.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarKwait.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 6.5167, BrCotacao::DinarKwait.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarKwait.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 6.5665, BrCotacao::DinarKwait.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarKwait.new.venda(Date.new(2011, 12, 10))
    end
  end

end