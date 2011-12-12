require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoCfpTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02032, :venda => 0.02034}
    assert_equal cotacao_esperada, BrCotacao::FrancoCfp.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfp.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02032, BrCotacao::FrancoCfp.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfp.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02034, BrCotacao::FrancoCfp.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfp.new.venda(Date.new(2011, 12, 10))
    end
  end

end