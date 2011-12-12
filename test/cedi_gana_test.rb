require 'test/unit'
require 'date'
require 'brcotacao'

class CediGanaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.1, :venda => 1.1035}
    assert_equal cotacao_esperada, BrCotacao::CediGana.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CediGana.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.1, BrCotacao::CediGana.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CediGana.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.1035, BrCotacao::CediGana.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::CediGana.new.venda(Date.new(2011, 12, 10))
    end
  end

end