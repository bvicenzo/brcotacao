require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoComoresTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.004911, :venda => 0.004914}
    assert_equal cotacao_esperada, BrCotacao::FrancoComores.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoComores.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.004911, BrCotacao::FrancoComores.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoComores.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.004914, BrCotacao::FrancoComores.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoComores.new.venda(Date.new(2011, 12, 10))
    end
  end

end