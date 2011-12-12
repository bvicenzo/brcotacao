require 'test/unit'
require 'date'
require 'brcotacao'

class DolarDaGuianaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.00884, :venda => 0.008844}
    assert_equal cotacao_esperada, BrCotacao::DolarDaGuiana.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarDaGuiana.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.00884, BrCotacao::DolarDaGuiana.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarDaGuiana.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.008844, BrCotacao::DolarDaGuiana.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarDaGuiana.new.venda(Date.new(2011, 12, 10))
    end
  end

end