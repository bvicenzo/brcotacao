require 'test/unit'
require 'date'
require 'brcotacao'

class AfeganeAfeganistTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.03728, :venda => 0.0373}
    assert_equal cotacao_esperada, BrCotacao::AfeganeAfeganist.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::AfeganeAfeganist.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.03728, BrCotacao::AfeganeAfeganist.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::AfeganeAfeganist.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0373, BrCotacao::AfeganeAfeganist.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::AfeganeAfeganist.new.venda(Date.new(2011, 12, 10))
    end
  end

end