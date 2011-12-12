require 'test/unit'
require 'date'
require 'brcotacao'

class PesoMexicoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.1327, :venda => 0.1327}
    assert_equal cotacao_esperada, BrCotacao::PesoMexico.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoMexico.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.1327, BrCotacao::PesoMexico.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoMexico.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.1327, BrCotacao::PesoMexico.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoMexico.new.venda(Date.new(2011, 12, 10))
    end
  end

end