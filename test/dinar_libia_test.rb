require 'test/unit'
require 'date'
require 'brcotacao'

class DinarLibiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.4494, :venda => 1.4675}
    assert_equal cotacao_esperada, BrCotacao::DinarLibia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarLibia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.4494, BrCotacao::DinarLibia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarLibia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.4675, BrCotacao::DinarLibia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarLibia.new.venda(Date.new(2011, 12, 10))
    end
  end

end