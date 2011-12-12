require 'test/unit'
require 'date'
require 'brcotacao'

class DolarTrinTobagTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2814, :venda => 0.2901}
    assert_equal cotacao_esperada, BrCotacao::DolarTrinTobag.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarTrinTobag.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2814, BrCotacao::DolarTrinTobag.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarTrinTobag.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2901, BrCotacao::DolarTrinTobag.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarTrinTobag.new.venda(Date.new(2011, 12, 10))
    end
  end

end