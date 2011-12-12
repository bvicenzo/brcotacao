require 'test/unit'
require 'date'
require 'brcotacao'

class DirhamMarrocosTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2162, :venda => 0.2171}
    assert_equal cotacao_esperada, BrCotacao::DirhamMarrocos.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DirhamMarrocos.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2162, BrCotacao::DirhamMarrocos.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DirhamMarrocos.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2171, BrCotacao::DirhamMarrocos.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DirhamMarrocos.new.venda(Date.new(2011, 12, 10))
    end
  end

end