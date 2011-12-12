require 'test/unit'
require 'date'
require 'brcotacao'

class QuachaMalaviTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.01084, :venda => 0.01111}
    assert_equal cotacao_esperada, BrCotacao::QuachaMalavi.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuachaMalavi.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.01084, BrCotacao::QuachaMalavi.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuachaMalavi.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.01111, BrCotacao::QuachaMalavi.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuachaMalavi.new.venda(Date.new(2011, 12, 10))
    end
  end

end