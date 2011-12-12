require 'test/unit'
require 'date'
require 'brcotacao'

class RupiaIndonesiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.0002, :venda => 0.0002006}
    assert_equal cotacao_esperada, BrCotacao::RupiaIndonesia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaIndonesia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.0002, BrCotacao::RupiaIndonesia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaIndonesia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0002006, BrCotacao::RupiaIndonesia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::RupiaIndonesia.new.venda(Date.new(2011, 12, 10))
    end
  end

end