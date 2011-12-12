require 'test/unit'
require 'date'
require 'brcotacao'

class QuipeLaosRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0002262, :venda => 0.0002262}
    assert_equal cotacao_esperada, BrCotacao::QuipeLaosRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuipeLaosRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0002262, BrCotacao::QuipeLaosRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuipeLaosRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0002262, BrCotacao::QuipeLaosRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuipeLaosRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end