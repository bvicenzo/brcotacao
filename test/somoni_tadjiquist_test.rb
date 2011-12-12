require 'test/unit'
require 'date'
require 'brcotacao'

class SomoniTadjiquistTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.3808, :venda => 0.381}
    assert_equal cotacao_esperada, BrCotacao::SomoniTadjiquist.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::SomoniTadjiquist.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.3808, BrCotacao::SomoniTadjiquist.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::SomoniTadjiquist.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.381, BrCotacao::SomoniTadjiquist.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::SomoniTadjiquist.new.venda(Date.new(2011, 12, 10))
    end
  end

end