require 'test/unit'
require 'date'
require 'brcotacao'

class DramArmeniaRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.004732, :venda => 0.004745}
    assert_equal cotacao_esperada, BrCotacao::DramArmeniaRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DramArmeniaRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.004732, BrCotacao::DramArmeniaRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DramArmeniaRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.004745, BrCotacao::DramArmeniaRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DramArmeniaRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end