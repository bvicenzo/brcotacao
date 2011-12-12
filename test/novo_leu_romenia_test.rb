require 'test/unit'
require 'date'
require 'brcotacao'

class NovoLeuRomeniaTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.5575, :venda => 0.5583}
    assert_equal cotacao_esperada, BrCotacao::NovoLeuRomenia.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoLeuRomenia.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.5575, BrCotacao::NovoLeuRomenia.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoLeuRomenia.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.5583, BrCotacao::NovoLeuRomenia.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::NovoLeuRomenia.new.venda(Date.new(2011, 12, 10))
    end
  end

end