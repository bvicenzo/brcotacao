require 'test/unit'
require 'date'
require 'brcotacao'

class DolarNovaZelandTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.3975, :venda => 1.3985}
    assert_equal cotacao_esperada, BrCotacao::DolarNovaZeland.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarNovaZeland.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.3975, BrCotacao::DolarNovaZeland.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarNovaZeland.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.3985, BrCotacao::DolarNovaZeland.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarNovaZeland.new.venda(Date.new(2011, 12, 10))
    end
  end

end