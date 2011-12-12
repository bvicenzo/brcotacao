require 'test/unit'
require 'date'
require 'brcotacao'

class LibraEsterlinaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.8341, :venda => 2.8354}
    assert_equal cotacao_esperada, BrCotacao::LibraEsterlina.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraEsterlina.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.8341, BrCotacao::LibraEsterlina.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraEsterlina.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.8354, BrCotacao::LibraEsterlina.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraEsterlina.new.venda(Date.new(2011, 12, 10))
    end
  end

end