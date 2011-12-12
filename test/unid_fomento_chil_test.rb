require 'test/unit'
require 'date'
require 'brcotacao'

class UnidFomentoChilTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 8.15e-05, :venda => 8.15e-05}
    assert_equal cotacao_esperada, BrCotacao::UnidFomentoChil.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::UnidFomentoChil.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 8.15e-05, BrCotacao::UnidFomentoChil.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::UnidFomentoChil.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 8.15e-05, BrCotacao::UnidFomentoChil.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::UnidFomentoChil.new.venda(Date.new(2011, 12, 10))
    end
  end

end