require 'test/unit'
require 'date'
require 'brcotacao'

class DinarIraqueTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.00155, :venda => 0.001551}
    assert_equal cotacao_esperada, BrCotacao::DinarIraque.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarIraque.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.00155, BrCotacao::DinarIraque.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarIraque.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.001551, BrCotacao::DinarIraque.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarIraque.new.venda(Date.new(2011, 12, 10))
    end
  end

end