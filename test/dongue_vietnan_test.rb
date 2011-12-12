require 'test/unit'
require 'date'
require 'brcotacao'

class DongueVietnanTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 8.63e-05, :venda => 8.63e-05}
    assert_equal cotacao_esperada, BrCotacao::DongueVietnan.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DongueVietnan.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 8.63e-05, BrCotacao::DongueVietnan.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DongueVietnan.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 8.63e-05, BrCotacao::DongueVietnan.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DongueVietnan.new.venda(Date.new(2011, 12, 10))
    end
  end

end