require 'test/unit'
require 'date'
require 'brcotacao'

class MarcoConvBosniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = nil
    assert_equal cotacao_esperada, BrCotacao::MarcoConvBosnia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::MarcoConvBosnia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal nil, BrCotacao::MarcoConvBosnia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::MarcoConvBosnia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal nil, BrCotacao::MarcoConvBosnia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::MarcoConvBosnia.new.venda(Date.new(2011, 12, 10))
    end
  end

end