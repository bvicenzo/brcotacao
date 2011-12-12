require 'test/unit'
require 'date'
require 'brcotacao'

class CordobaOuroTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.07911, :venda => 0.07914}
    assert_equal cotacao_esperada, BrCotacao::CordobaOuro.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CordobaOuro.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.07911, BrCotacao::CordobaOuro.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CordobaOuro.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.07914, BrCotacao::CordobaOuro.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CordobaOuro.new.venda(Date.new(2011, 12, 10))
    end
  end

end