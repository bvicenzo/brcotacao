require 'test/unit'
require 'date'
require 'brcotacao'

class BirrEtiopiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.1038, :venda => 0.1061}
    assert_equal cotacao_esperada, BrCotacao::BirrEtiopia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BirrEtiopia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.1038, BrCotacao::BirrEtiopia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BirrEtiopia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.1061, BrCotacao::BirrEtiopia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::BirrEtiopia.new.venda(Date.new(2011, 12, 10))
    end
  end

end