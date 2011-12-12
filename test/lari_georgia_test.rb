require 'test/unit'
require 'date'
require 'brcotacao'

class LariGeorgiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.0885, :venda => 1.0988}
    assert_equal cotacao_esperada, BrCotacao::LariGeorgia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LariGeorgia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.0885, BrCotacao::LariGeorgia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LariGeorgia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.0988, BrCotacao::LariGeorgia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LariGeorgia.new.venda(Date.new(2011, 12, 10))
    end
  end

end