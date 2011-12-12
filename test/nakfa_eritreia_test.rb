require 'test/unit'
require 'date'
require 'brcotacao'

class NakfaEritreiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.1208, :venda => 0.1209}
    assert_equal cotacao_esperada, BrCotacao::NakfaEritreia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NakfaEritreia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.1208, BrCotacao::NakfaEritreia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NakfaEritreia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.1209, BrCotacao::NakfaEritreia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NakfaEritreia.new.venda(Date.new(2011, 12, 10))
    end
  end

end