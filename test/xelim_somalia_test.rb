require 'test/unit'
require 'date'
require 'brcotacao'

class XelimSomaliaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.001115, :venda => 0.001116}
    assert_equal cotacao_esperada, BrCotacao::XelimSomalia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimSomalia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.001115, BrCotacao::XelimSomalia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimSomalia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.001116, BrCotacao::XelimSomalia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::XelimSomalia.new.venda(Date.new(2011, 12, 10))
    end
  end

end