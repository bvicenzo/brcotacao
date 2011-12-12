require 'test/unit'
require 'date'
require 'brcotacao'

class TugrikMongoliaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.001305, :venda => 0.001324}
    assert_equal cotacao_esperada, BrCotacao::TugrikMongolia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TugrikMongolia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.001305, BrCotacao::TugrikMongolia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TugrikMongolia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.001324, BrCotacao::TugrikMongolia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TugrikMongolia.new.venda(Date.new(2011, 12, 10))
    end
  end

end