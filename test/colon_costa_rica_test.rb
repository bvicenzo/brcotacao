require 'test/unit'
require 'date'
require 'brcotacao'

class ColonCostaRicaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.003532, :venda => 0.003684}
    assert_equal cotacao_esperada, BrCotacao::ColonCostaRica.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ColonCostaRica.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.003532, BrCotacao::ColonCostaRica.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ColonCostaRica.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.003684, BrCotacao::ColonCostaRica.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::ColonCostaRica.new.venda(Date.new(2011, 12, 10))
    end
  end

end