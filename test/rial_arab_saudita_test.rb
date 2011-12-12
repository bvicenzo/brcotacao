require 'test/unit'
require 'date'
require 'brcotacao'

class RialArabSauditaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.4832, :venda => 0.4834}
    assert_equal cotacao_esperada, BrCotacao::RialArabSaudita.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialArabSaudita.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.4832, BrCotacao::RialArabSaudita.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialArabSaudita.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.4834, BrCotacao::RialArabSaudita.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialArabSaudita.new.venda(Date.new(2011, 12, 10))
    end
  end

end