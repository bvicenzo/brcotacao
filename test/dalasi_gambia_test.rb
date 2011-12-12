require 'test/unit'
require 'date'
require 'brcotacao'

class DalasiGambiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.06131, :venda => 0.06366}
    assert_equal cotacao_esperada, BrCotacao::DalasiGambia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DalasiGambia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.06131, BrCotacao::DalasiGambia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DalasiGambia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.06366, BrCotacao::DalasiGambia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DalasiGambia.new.venda(Date.new(2011, 12, 10))
    end
  end

end