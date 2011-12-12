require 'test/unit'
require 'date'
require 'brcotacao'

class ColonElSalvadorTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2071, :venda => 0.2072}
    assert_equal cotacao_esperada, BrCotacao::ColonElSalvador.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ColonElSalvador.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2071, BrCotacao::ColonElSalvador.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ColonElSalvador.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2072, BrCotacao::ColonElSalvador.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ColonElSalvador.new.venda(Date.new(2011, 12, 10))
    end
  end

end