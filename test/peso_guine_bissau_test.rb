require 'test/unit'
require 'date'
require 'brcotacao'

class PesoGuineBissauTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = nil
    assert_equal cotacao_esperada, BrCotacao::PesoGuineBissau.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoGuineBissau.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal nil, BrCotacao::PesoGuineBissau.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoGuineBissau.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal nil, BrCotacao::PesoGuineBissau.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoGuineBissau.new.venda(Date.new(2011, 12, 10))
    end
  end

end