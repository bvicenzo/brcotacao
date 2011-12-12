require 'test/unit'
require 'date'
require 'brcotacao'

class NgultrumButaoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.03482, :venda => 0.03484}
    assert_equal cotacao_esperada, BrCotacao::NgultrumButao.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NgultrumButao.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.03482, BrCotacao::NgultrumButao.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NgultrumButao.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.03484, BrCotacao::NgultrumButao.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NgultrumButao.new.venda(Date.new(2011, 12, 10))
    end
  end

end