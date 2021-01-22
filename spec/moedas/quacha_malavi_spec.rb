require 'spec_helper'

describe BrCotacao::QuachaMalavi do
  subject { BrCotacao::QuachaMalavi.new }

  describe '.cotacao' do

    it_should_behave_like 'banco central fora', :cotacao

    context 'quando o banco central esta no ar' do

      it_should_behave_like 'dia sem cotacao', :cotacao

      context "e o dia pesquisado tem cotacao" do
        let(:data_pesquisada) { Date.new(2012, 2, 2)  }
        let(:valor_esperado) { {:compra => 0.01084, :venda => 0.01111} }

        before do
          expect(Net::HTTP).to receive(:get_response).and_return(double(:msg => 'OK', :body => fixure('20111209.csv')))
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
        let(:valor_esperado) { 0.01084 }

        before do
          expect(Net::HTTP).to receive(:get_response).and_return(double(:msg => 'OK', :body => fixure('20111209.csv')))
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
        let(:valor_esperado) { 0.01111 }

        before do
          expect(Net::HTTP).to receive(:get_response).and_return(double(:msg => 'OK', :body => fixure('20111209.csv')))
        end

        it_should_behave_like 'dia com cotacao', :venda
      end
    end
  end
end
