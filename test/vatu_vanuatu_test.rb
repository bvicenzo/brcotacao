require 'test/unit'
require 'date'
require 'brcotacao'

class VatuVanuatuTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.01909, :venda => 0.01909}
    assert_equal cotacao_esperada, BrCotacao::VatuVanuatu.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::VatuVanuatu.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.01909, BrCotacao::VatuVanuatu.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::VatuVanuatu.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.01909, BrCotacao::VatuVanuatu.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::VatuVanuatu.new.venda(Date.new(2011, 12, 10))
    end
  end

end