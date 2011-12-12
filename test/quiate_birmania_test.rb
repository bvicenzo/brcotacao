require 'test/unit'
require 'date'
require 'brcotacao'

class QuiateBirmaniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2823, :venda => 0.2824}
    assert_equal cotacao_esperada, BrCotacao::QuiateBirmania.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuiateBirmania.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2823, BrCotacao::QuiateBirmania.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuiateBirmania.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2824, BrCotacao::QuiateBirmania.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuiateBirmania.new.venda(Date.new(2011, 12, 10))
    end
  end

end