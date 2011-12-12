require 'test/unit'
require 'date'
require 'brcotacao'

class FrancoCfaBceaoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.003683, :venda => 0.003686}
    assert_equal cotacao_esperada, BrCotacao::FrancoCfaBceao.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfaBceao.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.003683, BrCotacao::FrancoCfaBceao.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfaBceao.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.003686, BrCotacao::FrancoCfaBceao.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::FrancoCfaBceao.new.venda(Date.new(2011, 12, 10))
    end
  end

end