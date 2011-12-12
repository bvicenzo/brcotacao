require 'test/unit'
require 'date'
require 'brcotacao'

class CoroaTchecaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.09508, :venda => 0.09524}
    assert_equal cotacao_esperada, BrCotacao::CoroaTcheca.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaTcheca.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.09508, BrCotacao::CoroaTcheca.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaTcheca.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.09524, BrCotacao::CoroaTcheca.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaTcheca.new.venda(Date.new(2011, 12, 10))
    end
  end

end