require 'test/unit'
require 'date'
require 'brcotacao'

class NovoManatTurcomTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.6359, :venda => 0.6361}
    assert_equal cotacao_esperada, BrCotacao::NovoManatTurcom.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoManatTurcom.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.6359, BrCotacao::NovoManatTurcom.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoManatTurcom.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.6361, BrCotacao::NovoManatTurcom.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoManatTurcom.new.venda(Date.new(2011, 12, 10))
    end
  end

end