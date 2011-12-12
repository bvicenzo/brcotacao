require 'test/unit'
require 'date'
require 'brcotacao'

class NovaLibraSudaneTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.6663, :venda => 0.6867}
    assert_equal cotacao_esperada, BrCotacao::NovaLibraSudane.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaLibraSudane.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.6663, BrCotacao::NovaLibraSudane.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaLibraSudane.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.6867, BrCotacao::NovaLibraSudane.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaLibraSudane.new.venda(Date.new(2011, 12, 10))
    end
  end

end