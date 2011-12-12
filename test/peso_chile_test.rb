require 'test/unit'
require 'date'
require 'brcotacao'

class PesoChileTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.003548, :venda => 0.003552}
    assert_equal cotacao_esperada, BrCotacao::PesoChile.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoChile.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.003548, BrCotacao::PesoChile.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoChile.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.003552, BrCotacao::PesoChile.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoChile.new.venda(Date.new(2011, 12, 10))
    end
  end

end