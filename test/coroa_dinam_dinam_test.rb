require 'test/unit'
require 'date'
require 'brcotacao'

class CoroaDinamDinamTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.3259, :venda => 0.326}
    assert_equal cotacao_esperada, BrCotacao::CoroaDinamDinam.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaDinamDinam.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.3259, BrCotacao::CoroaDinamDinam.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaDinamDinam.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.326, BrCotacao::CoroaDinamDinam.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaDinamDinam.new.venda(Date.new(2011, 12, 10))
    end
  end

end