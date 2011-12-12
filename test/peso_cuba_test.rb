require 'test/unit'
require 'date'
require 'brcotacao'

class PesoCubaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.8123, :venda => 1.813}
    assert_equal cotacao_esperada, BrCotacao::PesoCuba.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoCuba.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.8123, BrCotacao::PesoCuba.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoCuba.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.813, BrCotacao::PesoCuba.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PesoCuba.new.venda(Date.new(2011, 12, 10))
    end
  end

end