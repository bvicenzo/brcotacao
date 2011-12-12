require 'test/unit'
require 'date'
require 'brcotacao'

class DinarMacedoniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.03894, :venda => 0.03953}
    assert_equal cotacao_esperada, BrCotacao::DinarMacedonia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarMacedonia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.03894, BrCotacao::DinarMacedonia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarMacedonia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.03953, BrCotacao::DinarMacedonia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarMacedonia.new.venda(Date.new(2011, 12, 10))
    end
  end

end