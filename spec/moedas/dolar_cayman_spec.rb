require 'spec_helper'

describe BrCotacao::DolarCayman do
  subject { BrCotacao::DolarCayman.new }

  describe '.cotacao' do

    it_should_behave_like 'banco central fora', :cotacao

    context 'quando o banco central esta no ar' do

      it_should_behave_like 'dia sem cotacao', :cotacao

      context "e o dia pesquisado tem cotacao" do
        let(:data_pesquisada) { Date.new(2012, 2, 2)  }
        let(:valor_esperado) { {:compra => 2.2101, :venda => 2.211} }

        before do
          Net::HTTP.any_instance.stub(:get).and_return(mock(:msg => 'OK', :body => fixure('20111209.csv')))
        end

        it_should_behave_like 'dia com cotacao', :cotacao
      end
    end
  end

  describe '.compra' do

    it_should_behave_like 'banco central fora', :compra

    context 'quando o banco central esta no ar' do

      it_should_behave_like 'dia sem cotacao', :compra

      context "e o dia pesquisado tem cotacao" do
        let(:data_pesquisada) { Date.new(2012, 2, 2)  }
        let(:valor_esperado) { 2.2101 }

        before do
          Net::HTTP.any_instance.stub(:get).and_return(mock(:msg => 'OK', :body => fixure('20111209.csv')))
        end

        it_should_behave_like 'dia com cotacao', :compra
      end
    end
  end

  describe '.venda' do

    it_should_behave_like 'banco central fora', :venda

    context 'quando o banco central esta no ar' do

      it_should_behave_like 'dia sem cotacao', :venda

      context "e o dia pesquisado tem cotacao" do
        let(:data_pesquisada) { Date.new(2012, 2, 2)  }
        let(:valor_esperado) { 2.211 }

        before do
          Net::HTTP.any_instance.stub(:get).and_return(mock(:msg => 'OK', :body => fixure('20111209.csv')))
        end

        it_should_behave_like 'dia com cotacao', :venda
      end
    end
  end
end