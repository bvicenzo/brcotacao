require 'test/unit'
require 'date'
require 'brcotacao'

class DirhamEmirArabeTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.4934, :venda => 0.4936}
    assert_equal cotacao_esperada, BrCotacao::DirhamEmirArabe.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DirhamEmirArabe.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.4934, BrCotacao::DirhamEmirArabe.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DirhamEmirArabe.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.4936, BrCotacao::DirhamEmirArabe.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DirhamEmirArabe.new.venda(Date.new(2011, 12, 10))
    end
  end

end