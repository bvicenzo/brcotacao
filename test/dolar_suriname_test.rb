require 'test/unit'
require 'date'
require 'brcotacao'

class DolarSurinameTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.541, :venda => 0.5578}
    assert_equal cotacao_esperada, BrCotacao::DolarSuriname.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarSuriname.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.541, BrCotacao::DolarSuriname.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarSuriname.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.5578, BrCotacao::DolarSuriname.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarSuriname.new.venda(Date.new(2011, 12, 10))
    end
  end

end