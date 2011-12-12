require 'test/unit'
require 'date'
require 'brcotacao'

class WonCoreiaSulTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.00158, :venda => 0.001581}
    assert_equal cotacao_esperada, BrCotacao::WonCoreiaSul.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::WonCoreiaSul.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.00158, BrCotacao::WonCoreiaSul.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::WonCoreiaSul.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.001581, BrCotacao::WonCoreiaSul.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::WonCoreiaSul.new.venda(Date.new(2011, 12, 10))
    end
  end

end