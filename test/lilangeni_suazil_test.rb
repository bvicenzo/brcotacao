require 'test/unit'
require 'date'
require 'brcotacao'

class LilangeniSuazilTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2227, :venda => 0.223}
    assert_equal cotacao_esperada, BrCotacao::LilangeniSuazil.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LilangeniSuazil.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2227, BrCotacao::LilangeniSuazil.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LilangeniSuazil.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.223, BrCotacao::LilangeniSuazil.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LilangeniSuazil.new.venda(Date.new(2011, 12, 10))
    end
  end

end