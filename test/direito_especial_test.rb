require 'test/unit'
require 'date'
require 'brcotacao'

class DireitoEspecialTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 2.8223, :venda => 2.8234}
    assert_equal cotacao_esperada, BrCotacao::DireitoEspecial.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DireitoEspecial.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 2.8223, BrCotacao::DireitoEspecial.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DireitoEspecial.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 2.8234, BrCotacao::DireitoEspecial.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DireitoEspecial.new.venda(Date.new(2011, 12, 10))
    end
  end

end