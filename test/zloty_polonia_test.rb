require 'test/unit'
require 'date'
require 'brcotacao'

class ZlotyPoloniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.5365, :venda => 0.537}
    assert_equal cotacao_esperada, BrCotacao::ZlotyPolonia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ZlotyPolonia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.5365, BrCotacao::ZlotyPolonia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ZlotyPolonia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.537, BrCotacao::ZlotyPolonia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ZlotyPolonia.new.venda(Date.new(2011, 12, 10))
    end
  end

end