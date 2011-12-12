require 'test/unit'
require 'date'
require 'brcotacao'

class DolarFijiTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.9815, :venda => 0.9819}
    assert_equal cotacao_esperada, BrCotacao::DolarFiji.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarFiji.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.9815, BrCotacao::DolarFiji.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarFiji.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.9819, BrCotacao::DolarFiji.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarFiji.new.venda(Date.new(2011, 12, 10))
    end
  end

end