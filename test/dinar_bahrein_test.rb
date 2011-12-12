require 'test/unit'
require 'date'
require 'brcotacao'

class DinarBahreinTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 4.8072, :venda => 4.809}
    assert_equal cotacao_esperada, BrCotacao::DinarBahrein.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarBahrein.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 4.8072, BrCotacao::DinarBahrein.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarBahrein.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 4.809, BrCotacao::DinarBahrein.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DinarBahrein.new.venda(Date.new(2011, 12, 10))
    end
  end

end