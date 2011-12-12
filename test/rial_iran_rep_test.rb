require 'test/unit'
require 'date'
require 'brcotacao'

class RialIranRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0001634, :venda => 0.0001692}
    assert_equal cotacao_esperada, BrCotacao::RialIranRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialIranRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0001634, BrCotacao::RialIranRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialIranRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0001692, BrCotacao::RialIranRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialIranRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end