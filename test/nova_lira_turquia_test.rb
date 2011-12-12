require 'test/unit'
require 'date'
require 'brcotacao'

class NovaLiraTurquiaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.9812, :venda => 0.982}
    assert_equal cotacao_esperada, BrCotacao::NovaLiraTurquia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaLiraTurquia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.9812, BrCotacao::NovaLiraTurquia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaLiraTurquia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.982, BrCotacao::NovaLiraTurquia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovaLiraTurquia.new.venda(Date.new(2011, 12, 10))
    end
  end

end