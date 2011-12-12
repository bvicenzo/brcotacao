require 'test/unit'
require 'date'
require 'brcotacao'

class LibraFalklandTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.8343, :venda => 2.8357}
    assert_equal cotacao_esperada, BrCotacao::LibraFalkland.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraFalkland.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.8343, BrCotacao::LibraFalkland.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraFalkland.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.8357, BrCotacao::LibraFalkland.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraFalkland.new.venda(Date.new(2011, 12, 10))
    end
  end

end