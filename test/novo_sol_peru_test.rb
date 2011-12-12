require 'test/unit'
require 'date'
require 'brcotacao'

class NovoSolPeruTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.672, :venda => 0.6743}
    assert_equal cotacao_esperada, BrCotacao::NovoSolPeru.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoSolPeru.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.672, BrCotacao::NovoSolPeru.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoSolPeru.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.6743, BrCotacao::NovoSolPeru.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoSolPeru.new.venda(Date.new(2011, 12, 10))
    end
  end

end