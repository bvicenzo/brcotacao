require 'test/unit'
require 'date'
require 'brcotacao'

class AriaryMadagascarTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0008569, :venda => 0.0008691}
    assert_equal cotacao_esperada, BrCotacao::AriaryMadagascar.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::AriaryMadagascar.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0008569, BrCotacao::AriaryMadagascar.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::AriaryMadagascar.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0008691, BrCotacao::AriaryMadagascar.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::AriaryMadagascar.new.venda(Date.new(2011, 12, 10))
    end
  end

end