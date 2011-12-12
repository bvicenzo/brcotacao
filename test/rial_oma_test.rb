require 'test/unit'
require 'date'
require 'brcotacao'

class RialOmaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 4.7061, :venda => 4.7201}
    assert_equal cotacao_esperada, BrCotacao::RialOma.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialOma.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 4.7061, BrCotacao::RialOma.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialOma.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 4.7201, BrCotacao::RialOma.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialOma.new.venda(Date.new(2011, 12, 10))
    end
  end

end