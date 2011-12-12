require 'test/unit'
require 'date'
require 'brcotacao'

class RielCambojaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0004494, :venda => 0.0004496}
    assert_equal cotacao_esperada, BrCotacao::RielCamboja.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RielCamboja.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0004494, BrCotacao::RielCamboja.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RielCamboja.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0004496, BrCotacao::RielCamboja.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RielCamboja.new.venda(Date.new(2011, 12, 10))
    end
  end

end