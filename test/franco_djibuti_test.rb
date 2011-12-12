require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoDjibutiTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0102, :venda => 0.0102}
    assert_equal cotacao_esperada, BrCotacao::FrancoDjibuti.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoDjibuti.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0102, BrCotacao::FrancoDjibuti.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoDjibuti.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0102, BrCotacao::FrancoDjibuti.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoDjibuti.new.venda(Date.new(2011, 12, 10))
    end
  end

end