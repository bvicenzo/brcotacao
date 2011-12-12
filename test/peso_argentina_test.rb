require 'test/unit'
require 'date'
require 'brcotacao'

class PesoArgentinaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.4236, :venda => 0.4237}
    assert_equal cotacao_esperada, BrCotacao::PesoArgentina.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoArgentina.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.4236, BrCotacao::PesoArgentina.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoArgentina.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.4237, BrCotacao::PesoArgentina.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoArgentina.new.venda(Date.new(2011, 12, 10))
    end
  end

end