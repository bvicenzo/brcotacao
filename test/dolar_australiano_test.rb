require 'test/unit'
require 'date'
require 'brcotacao'

class DolarAustralianoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.8402, :venda => 1.8411}
    assert_equal cotacao_esperada, BrCotacao::DolarAustraliano.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarAustraliano.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.8402, BrCotacao::DolarAustraliano.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarAustraliano.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.8411, BrCotacao::DolarAustraliano.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarAustraliano.new.venda(Date.new(2011, 12, 10))
    end
  end

end