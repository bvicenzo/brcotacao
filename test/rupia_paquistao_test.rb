require 'test/unit'
require 'date'
require 'brcotacao'

class RupiaPaquistaoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02034, :venda => 0.02035}
    assert_equal cotacao_esperada, BrCotacao::RupiaPaquistao.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaPaquistao.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02034, BrCotacao::RupiaPaquistao.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaPaquistao.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02035, BrCotacao::RupiaPaquistao.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaPaquistao.new.venda(Date.new(2011, 12, 10))
    end
  end

end