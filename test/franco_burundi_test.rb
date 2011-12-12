require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoBurundiTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.001342, :venda => 0.001365}
    assert_equal cotacao_esperada, BrCotacao::FrancoBurundi.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoBurundi.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.001342, BrCotacao::FrancoBurundi.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoBurundi.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.001365, BrCotacao::FrancoBurundi.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoBurundi.new.venda(Date.new(2011, 12, 10))
    end
  end

end