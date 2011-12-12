require 'test/unit'
require 'date'
require 'brcotacao'

class NovoDolarTaiwanTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.05998, :venda => 0.06003}
    assert_equal cotacao_esperada, BrCotacao::NovoDolarTaiwan.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoDolarTaiwan.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.05998, BrCotacao::NovoDolarTaiwan.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoDolarTaiwan.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.06003, BrCotacao::NovoDolarTaiwan.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoDolarTaiwan.new.venda(Date.new(2011, 12, 10))
    end
  end

end