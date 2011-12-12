require 'test/unit'
require 'date'
require 'brcotacao'

class DolarCingapuraTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.3977, :venda => 1.3989}
    assert_equal cotacao_esperada, BrCotacao::DolarCingapura.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCingapura.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.3977, BrCotacao::DolarCingapura.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCingapura.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.3989, BrCotacao::DolarCingapura.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::DolarCingapura.new.venda(Date.new(2011, 12, 10))
    end
  end

end