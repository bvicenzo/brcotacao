require 'test/unit'
require 'date'
require 'brcotacao'

class QuetzalGuatemalaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2322, :venda => 0.2338}
    assert_equal cotacao_esperada, BrCotacao::QuetzalGuatemala.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuetzalGuatemala.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2322, BrCotacao::QuetzalGuatemala.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuetzalGuatemala.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2338, BrCotacao::QuetzalGuatemala.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::QuetzalGuatemala.new.venda(Date.new(2011, 12, 10))
    end
  end

end