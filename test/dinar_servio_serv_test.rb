require 'test/unit'
require 'date'
require 'brcotacao'

class DinarServioServTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.02342, :venda => 0.02361}
    assert_equal cotacao_esperada, BrCotacao::DinarServioServ.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarServioServ.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.02342, BrCotacao::DinarServioServ.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarServioServ.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.02361, BrCotacao::DinarServioServ.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarServioServ.new.venda(Date.new(2011, 12, 10))
    end
  end

end