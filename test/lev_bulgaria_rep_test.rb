require 'test/unit'
require 'date'
require 'brcotacao'

class LevBulgariaRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.2384, :venda => 1.2391}
    assert_equal cotacao_esperada, BrCotacao::LevBulgariaRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LevBulgariaRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.2384, BrCotacao::LevBulgariaRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LevBulgariaRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.2391, BrCotacao::LevBulgariaRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LevBulgariaRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end