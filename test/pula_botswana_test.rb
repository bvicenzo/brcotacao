require 'test/unit'
require 'date'
require 'brcotacao'

class PulaBotswanaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2412, :venda => 0.2422}
    assert_equal cotacao_esperada, BrCotacao::PulaBotswana.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PulaBotswana.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2412, BrCotacao::PulaBotswana.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PulaBotswana.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2422, BrCotacao::PulaBotswana.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PulaBotswana.new.venda(Date.new(2011, 12, 10))
    end
  end

end