require 'test/unit'
require 'date'
require 'brcotacao'

class LeuMoldaviaRepTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 0.1536, :venda => 0.1547}
    assert_equal cotacao_esperada, BrCotacao::LeuMoldaviaRep.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LeuMoldaviaRep.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 0.1536, BrCotacao::LeuMoldaviaRep.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LeuMoldaviaRep.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 0.1547, BrCotacao::LeuMoldaviaRep.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::LeuMoldaviaRep.new.venda(Date.new(2011, 12, 10))
    end
  end

end