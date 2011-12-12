require 'test/unit'
require 'date'
require 'brcotacao'

class DinarTunisiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.2201, :venda => 1.2289}
    assert_equal cotacao_esperada, BrCotacao::DinarTunisia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarTunisia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.2201, BrCotacao::DinarTunisia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarTunisia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.2289, BrCotacao::DinarTunisia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarTunisia.new.venda(Date.new(2011, 12, 10))
    end
  end

end