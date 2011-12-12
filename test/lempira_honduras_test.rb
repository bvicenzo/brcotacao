require 'test/unit'
require 'date'
require 'brcotacao'

class LempiraHondurasTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.09579, :venda => 0.09582}
    assert_equal cotacao_esperada, BrCotacao::LempiraHonduras.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LempiraHonduras.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.09579, BrCotacao::LempiraHonduras.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LempiraHonduras.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.09582, BrCotacao::LempiraHonduras.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LempiraHonduras.new.venda(Date.new(2011, 12, 10))
    end
  end

end