require 'test/unit'
require 'date'
require 'brcotacao'

class ForintHungriaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.007961, :venda => 0.007975}
    assert_equal cotacao_esperada, BrCotacao::ForintHungria.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ForintHungria.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.007961, BrCotacao::ForintHungria.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ForintHungria.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.007975, BrCotacao::ForintHungria.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ForintHungria.new.venda(Date.new(2011, 12, 10))
    end
  end

end