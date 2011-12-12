require 'test/unit'
require 'date'
require 'brcotacao'

class TengeCazaquistaoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.01229, :venda => 0.0123}
    assert_equal cotacao_esperada, BrCotacao::TengeCazaquistao.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TengeCazaquistao.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.01229, BrCotacao::TengeCazaquistao.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TengeCazaquistao.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0123, BrCotacao::TengeCazaquistao.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TengeCazaquistao.new.venda(Date.new(2011, 12, 10))
    end
  end

end