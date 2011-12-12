require 'test/unit'
require 'date'
require 'brcotacao'

class DolarCaymanTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.2101, :venda => 2.211}
    assert_equal cotacao_esperada, BrCotacao::DolarCayman.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCayman.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.2101, BrCotacao::DolarCayman.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCayman.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.211, BrCotacao::DolarCayman.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCayman.new.venda(Date.new(2011, 12, 10))
    end
  end

end