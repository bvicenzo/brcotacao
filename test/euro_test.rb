require 'test/unit'
require 'date'
require 'brcotacao'

class EuroTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.423, :venda => 2.4242}
    assert_equal cotacao_esperada, BrCotacao::Euro.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::Euro.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.423, BrCotacao::Euro.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::Euro.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.4242, BrCotacao::Euro.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::Euro.new.venda(Date.new(2011, 12, 10))
    end
  end

end