require 'test/unit'
require 'date'
require 'brcotacao'

class CoroaSuecaSueciTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2687, :venda => 0.2689}
    assert_equal cotacao_esperada, BrCotacao::CoroaSuecaSueci.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaSuecaSueci.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2687, BrCotacao::CoroaSuecaSueci.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaSuecaSueci.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2689, BrCotacao::CoroaSuecaSueci.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CoroaSuecaSueci.new.venda(Date.new(2011, 12, 10))
    end
  end

end