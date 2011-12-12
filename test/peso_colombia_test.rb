require 'test/unit'
require 'date'
require 'brcotacao'

class PesoColombiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0009392, :venda => 0.0009402}
    assert_equal cotacao_esperada, BrCotacao::PesoColombia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoColombia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0009392, BrCotacao::PesoColombia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoColombia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0009402, BrCotacao::PesoColombia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoColombia.new.venda(Date.new(2011, 12, 10))
    end
  end

end