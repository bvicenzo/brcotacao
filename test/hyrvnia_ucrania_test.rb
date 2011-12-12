require 'test/unit'
require 'date'
require 'brcotacao'

class HyrvniaUcraniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2261, :venda => 0.2267}
    assert_equal cotacao_esperada, BrCotacao::HyrvniaUcrania.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::HyrvniaUcrania.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2261, BrCotacao::HyrvniaUcrania.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::HyrvniaUcrania.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2267, BrCotacao::HyrvniaUcrania.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::HyrvniaUcrania.new.venda(Date.new(2011, 12, 10))
    end
  end

end