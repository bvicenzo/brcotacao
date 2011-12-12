require 'test/unit'
require 'date'
require 'brcotacao'

class BolivianoBoliviaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2613, :venda => 0.2614}
    assert_equal cotacao_esperada, BrCotacao::BolivianoBolivia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BolivianoBolivia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2613, BrCotacao::BolivianoBolivia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BolivianoBolivia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2614, BrCotacao::BolivianoBolivia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BolivianoBolivia.new.venda(Date.new(2011, 12, 10))
    end
  end

end