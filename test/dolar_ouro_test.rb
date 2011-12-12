require 'test/unit'
require 'date'
require 'brcotacao'

class DolarOuroTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 99.7413, :venda => 99.7799}
    assert_equal cotacao_esperada, BrCotacao::DolarOuro.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarOuro.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 99.7413, BrCotacao::DolarOuro.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarOuro.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 99.7799, BrCotacao::DolarOuro.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarOuro.new.venda(Date.new(2011, 12, 10))
    end
  end

end