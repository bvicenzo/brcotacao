require 'test/unit'
require 'date'
require 'brcotacao'

class LekAlbaniaRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.01731, :venda => 0.01745}
    assert_equal cotacao_esperada, BrCotacao::LekAlbaniaRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LekAlbaniaRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.01731, BrCotacao::LekAlbaniaRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LekAlbaniaRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.01745, BrCotacao::LekAlbaniaRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LekAlbaniaRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end