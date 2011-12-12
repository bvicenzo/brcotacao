require 'test/unit'
require 'date'
require 'brcotacao'

class PatacaMacauTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2263, :venda => 0.2264}
    assert_equal cotacao_esperada, BrCotacao::PatacaMacau.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PatacaMacau.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2263, BrCotacao::PatacaMacau.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PatacaMacau.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2264, BrCotacao::PatacaMacau.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PatacaMacau.new.venda(Date.new(2011, 12, 10))
    end
  end

end