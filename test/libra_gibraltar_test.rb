require 'test/unit'
require 'date'
require 'brcotacao'

class LibraGibraltarTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.8341, :venda => 2.8354}
    assert_equal cotacao_esperada, BrCotacao::LibraGibraltar.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraGibraltar.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.8341, BrCotacao::LibraGibraltar.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraGibraltar.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.8354, BrCotacao::LibraGibraltar.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LibraGibraltar.new.venda(Date.new(2011, 12, 10))
    end
  end

end