require 'test/unit'
require 'date'
require 'brcotacao'

class DolarBelizeTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.9147, :venda => 0.9151}
    assert_equal cotacao_esperada, BrCotacao::DolarBelize.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBelize.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.9147, BrCotacao::DolarBelize.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBelize.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.9151, BrCotacao::DolarBelize.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBelize.new.venda(Date.new(2011, 12, 10))
    end
  end

end