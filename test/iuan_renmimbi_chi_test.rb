require 'test/unit'
require 'date'
require 'brcotacao'

class IuanRenmimbiChiTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2847, :venda => 0.2849}
    assert_equal cotacao_esperada, BrCotacao::IuanRenmimbiChi.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::IuanRenmimbiChi.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2847, BrCotacao::IuanRenmimbiChi.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::IuanRenmimbiChi.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2849, BrCotacao::IuanRenmimbiChi.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::IuanRenmimbiChi.new.venda(Date.new(2011, 12, 10))
    end
  end

end