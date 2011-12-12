require 'test/unit'
require 'date'
require 'brcotacao'

class LotiLesotoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2228, :venda => 0.223}
    assert_equal cotacao_esperada, BrCotacao::LotiLesoto.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LotiLesoto.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2228, BrCotacao::LotiLesoto.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LotiLesoto.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.223, BrCotacao::LotiLesoto.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LotiLesoto.new.venda(Date.new(2011, 12, 10))
    end
  end

end