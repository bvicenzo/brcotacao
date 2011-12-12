require 'test/unit'
require 'date'
require 'brcotacao'

class PesoFilipinasTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.04152, :venda => 0.04165}
    assert_equal cotacao_esperada, BrCotacao::PesoFilipinas.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoFilipinas.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.04152, BrCotacao::PesoFilipinas.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoFilipinas.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.04165, BrCotacao::PesoFilipinas.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoFilipinas.new.venda(Date.new(2011, 12, 10))
    end
  end

end