require 'test/unit'
require 'date'
require 'brcotacao'

class DolarCanadenseTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.7717, :venda => 1.7726}
    assert_equal cotacao_esperada, BrCotacao::DolarCanadense.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCanadense.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.7717, BrCotacao::DolarCanadense.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCanadense.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.7726, BrCotacao::DolarCanadense.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCanadense.new.venda(Date.new(2011, 12, 10))
    end
  end

end