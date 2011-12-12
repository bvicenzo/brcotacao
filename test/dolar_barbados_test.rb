require 'test/unit'
require 'date'
require 'brcotacao'

class DolarBarbadosTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.9062, :venda => 0.9065}
    assert_equal cotacao_esperada, BrCotacao::DolarBarbados.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBarbados.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.9062, BrCotacao::DolarBarbados.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBarbados.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.9065, BrCotacao::DolarBarbados.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBarbados.new.venda(Date.new(2011, 12, 10))
    end
  end

end