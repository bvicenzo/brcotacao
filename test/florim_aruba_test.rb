require 'test/unit'
require 'date'
require 'brcotacao'

class FlorimArubaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.0125, :venda => 1.0128}
    assert_equal cotacao_esperada, BrCotacao::FlorimAruba.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FlorimAruba.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.0125, BrCotacao::FlorimAruba.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FlorimAruba.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.0128, BrCotacao::FlorimAruba.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FlorimAruba.new.venda(Date.new(2011, 12, 10))
    end
  end

end