require 'test/unit'
require 'date'
require 'brcotacao'

class BathTailandiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.05859, :venda => 0.05865}
    assert_equal cotacao_esperada, BrCotacao::BathTailandia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BathTailandia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.05859, BrCotacao::BathTailandia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BathTailandia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.05865, BrCotacao::BathTailandia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BathTailandia.new.venda(Date.new(2011, 12, 10))
    end
  end

end