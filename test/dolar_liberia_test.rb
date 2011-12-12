require 'test/unit'
require 'date'
require 'brcotacao'

class DolarLiberiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02517, :venda => 0.02518}
    assert_equal cotacao_esperada, BrCotacao::DolarLiberia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarLiberia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02517, BrCotacao::DolarLiberia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarLiberia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02518, BrCotacao::DolarLiberia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarLiberia.new.venda(Date.new(2011, 12, 10))
    end
  end

end