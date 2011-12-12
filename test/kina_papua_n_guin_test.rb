require 'test/unit'
require 'date'
require 'brcotacao'

class KinaPapuaNGuinTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.8164, :venda => 0.8766}
    assert_equal cotacao_esperada, BrCotacao::KinaPapuaNGuin.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::KinaPapuaNGuin.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.8164, BrCotacao::KinaPapuaNGuin.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::KinaPapuaNGuin.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.8766, BrCotacao::KinaPapuaNGuin.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::KinaPapuaNGuin.new.venda(Date.new(2011, 12, 10))
    end
  end

end