require 'test/unit'
require 'date'
require 'brcotacao'

class SomQuirguistaoTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.03888, :venda => 0.0389}
    assert_equal cotacao_esperada, BrCotacao::SomQuirguistao.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::SomQuirguistao.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.03888, BrCotacao::SomQuirguistao.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::SomQuirguistao.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.0389, BrCotacao::SomQuirguistao.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::SomQuirguistao.new.venda(Date.new(2011, 12, 10))
    end
  end

end