require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoGuineTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.00025, :venda => 0.0002536}
    assert_equal cotacao_esperada, BrCotacao::FrancoGuine.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoGuine.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.00025, BrCotacao::FrancoGuine.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoGuine.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0002536, BrCotacao::FrancoGuine.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoGuine.new.venda(Date.new(2011, 12, 10))
    end
  end

end