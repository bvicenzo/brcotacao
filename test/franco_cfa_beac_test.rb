require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoCfaBeacTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.003683, :venda => 0.003686}
    assert_equal cotacao_esperada, BrCotacao::FrancoCfaBeac.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfaBeac.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.003683, BrCotacao::FrancoCfaBeac.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfaBeac.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.003686, BrCotacao::FrancoCfaBeac.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfaBeac.new.venda(Date.new(2011, 12, 10))
    end
  end

end