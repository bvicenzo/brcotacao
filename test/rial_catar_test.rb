require 'test/unit'
require 'date'
require 'brcotacao'

class RialCatarTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.4976, :venda => 0.4979}
    assert_equal cotacao_esperada, BrCotacao::RialCatar.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialCatar.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.4976, BrCotacao::RialCatar.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialCatar.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.4979, BrCotacao::RialCatar.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialCatar.new.venda(Date.new(2011, 12, 10))
    end
  end

end