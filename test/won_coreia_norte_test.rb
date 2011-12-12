require 'test/unit'
require 'date'
require 'brcotacao'

class WonCoreiaNorteTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = nil
    assert_equal cotacao_esperada, BrCotacao::WonCoreiaNorte.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::WonCoreiaNorte.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal nil, BrCotacao::WonCoreiaNorte.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::WonCoreiaNorte.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal nil, BrCotacao::WonCoreiaNorte.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::WonCoreiaNorte.new.venda(Date.new(2011, 12, 10))
    end
  end

end