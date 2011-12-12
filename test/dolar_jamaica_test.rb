require 'test/unit'
require 'date'
require 'brcotacao'

class DolarJamaicaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02092, :venda => 0.02118}
    assert_equal cotacao_esperada, BrCotacao::DolarJamaica.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarJamaica.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02092, BrCotacao::DolarJamaica.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarJamaica.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02118, BrCotacao::DolarJamaica.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarJamaica.new.venda(Date.new(2011, 12, 10))
    end
  end

end