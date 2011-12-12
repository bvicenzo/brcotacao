require 'test/unit'
require 'date'
require 'brcotacao'

class TalaSamoaOcTest < Test::Unit::TestCase

  def test_cotacao
    cotacao_esperada = {:compra => 4.171, :venda => 4.3425}
    assert_equal cotacao_esperada, BrCotacao::TalaSamoaOc.new.cotacao(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TalaSamoaOc.new.cotacao(Date.new(2011, 12, 10))
    end
  end

  def test_compra
    assert_equal 4.171, BrCotacao::TalaSamoaOc.new.compra(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TalaSamoaOc.new.compra(Date.new(2011, 12, 10))
    end
  end

  def test_venda
    assert_equal 4.3425, BrCotacao::TalaSamoaOc.new.venda(Date.new(2011, 12, 9))
    assert_raise BrCotacao::Errors::CotacaoNaoEncontradaError do
      BrCotacao::TalaSamoaOc.new.venda(Date.new(2011, 12, 10))
    end
  end

end