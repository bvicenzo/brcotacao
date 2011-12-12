require 'test/unit'
require 'date'
require 'brcotacao'

class LatLetoniaRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 3.4652, :venda => 3.4765}
    assert_equal cotacao_esperada, BrCotacao::LatLetoniaRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LatLetoniaRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 3.4652, BrCotacao::LatLetoniaRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LatLetoniaRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 3.4765, BrCotacao::LatLetoniaRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LatLetoniaRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end