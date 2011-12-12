require 'test/unit'
require 'date'
require 'brcotacao'

class RubloBelarusTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0002071, :venda => 0.0002108}
    assert_equal cotacao_esperada, BrCotacao::RubloBelarus.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RubloBelarus.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0002071, BrCotacao::RubloBelarus.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RubloBelarus.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0002108, BrCotacao::RubloBelarus.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RubloBelarus.new.venda(Date.new(2011, 12, 10))
    end
  end

end