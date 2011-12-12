require 'test/unit'
require 'date'
require 'brcotacao'

class KunaCroaciaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.3224, :venda => 0.3238}
    assert_equal cotacao_esperada, BrCotacao::KunaCroacia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::KunaCroacia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.3224, BrCotacao::KunaCroacia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::KunaCroacia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.3238, BrCotacao::KunaCroacia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::KunaCroacia.new.venda(Date.new(2011, 12, 10))
    end
  end

end