require 'test/unit'
require 'date'
require 'brcotacao'

class RialIemenTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.008256, :venda => 0.008317}
    assert_equal cotacao_esperada, BrCotacao::RialIemen.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialIemen.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.008256, BrCotacao::RialIemen.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialIemen.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.008317, BrCotacao::RialIemen.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RialIemen.new.venda(Date.new(2011, 12, 10))
    end
  end

end