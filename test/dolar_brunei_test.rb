require 'test/unit'
require 'date'
require 'brcotacao'

class DolarBruneiTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.3975, :venda => 1.3992}
    assert_equal cotacao_esperada, BrCotacao::DolarBrunei.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBrunei.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.3975, BrCotacao::DolarBrunei.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBrunei.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.3992, BrCotacao::DolarBrunei.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarBrunei.new.venda(Date.new(2011, 12, 10))
    end
  end

end