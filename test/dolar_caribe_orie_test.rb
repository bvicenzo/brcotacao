require 'test/unit'
require 'date'
require 'brcotacao'

class DolarCaribeOrieTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.6712, :venda => 0.6715}
    assert_equal cotacao_esperada, BrCotacao::DolarCaribeOrie.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCaribeOrie.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.6712, BrCotacao::DolarCaribeOrie.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCaribeOrie.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.6715, BrCotacao::DolarCaribeOrie.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCaribeOrie.new.venda(Date.new(2011, 12, 10))
    end
  end

end