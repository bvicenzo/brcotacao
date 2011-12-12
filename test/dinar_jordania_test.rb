require 'test/unit'
require 'date'
require 'brcotacao'

class DinarJordaniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.5525, :venda => 2.5571}
    assert_equal cotacao_esperada, BrCotacao::DinarJordania.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarJordania.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.5525, BrCotacao::DinarJordania.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarJordania.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.5571, BrCotacao::DinarJordania.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarJordania.new.venda(Date.new(2011, 12, 10))
    end
  end

end