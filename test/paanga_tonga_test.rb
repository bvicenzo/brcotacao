require 'test/unit'
require 'date'
require 'brcotacao'

class PaangaTongaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 1.0551, :venda => 1.0555}
    assert_equal cotacao_esperada, BrCotacao::PaangaTonga.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PaangaTonga.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 1.0551, BrCotacao::PaangaTonga.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PaangaTonga.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 1.0555, BrCotacao::PaangaTonga.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::PaangaTonga.new.venda(Date.new(2011, 12, 10))
    end
  end

end