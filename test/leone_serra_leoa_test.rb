require 'test/unit'
require 'date'
require 'brcotacao'

class LeoneSerraLeoaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0004087, :venda => 0.0004171}
    assert_equal cotacao_esperada, BrCotacao::LeoneSerraLeoa.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LeoneSerraLeoa.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0004087, BrCotacao::LeoneSerraLeoa.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LeoneSerraLeoa.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0004171, BrCotacao::LeoneSerraLeoa.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LeoneSerraLeoa.new.venda(Date.new(2011, 12, 10))
    end
  end

end