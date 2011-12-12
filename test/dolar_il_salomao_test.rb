require 'test/unit'
require 'date'
require 'brcotacao'

class DolarIlSalomaoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.2399, :venda => 0.2609}
    assert_equal cotacao_esperada, BrCotacao::DolarIlSalomao.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarIlSalomao.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.2399, BrCotacao::DolarIlSalomao.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarIlSalomao.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.2609, BrCotacao::DolarIlSalomao.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarIlSalomao.new.venda(Date.new(2011, 12, 10))
    end
  end

end