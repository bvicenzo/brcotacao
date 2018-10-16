# encoding: utf-8
shared_examples_for 'lanca erro' do |metodo, erro|
  it 'deve lançar um erro' do
    expect do
      subject.send metodo, data_pesquisada
    end.to raise_error erro
  end
end

shared_examples_for 'banco central fora' do |metodo|
  context 'quando o banco central não responde' do
    let(:data_pesquisada) { Date.new(2011, 12, 10) }

    before do
     Net::HTTP.stub(:get_response).and_raise(SocketError)
    end

    it_should_behave_like 'lanca erro', metodo, Exception
  end
end

shared_examples_for 'dia sem cotacao' do |metodo|
  context "mas a moeda nao tem cotação no dia procurado" do
    before do
       Net::HTTP.stub(:get_response).and_return(double(:msg => 'fail', :body => ''))
    end
    let(:data_pesquisada) { Date.new(2011, 12, 10) }
    it_should_behave_like 'lanca erro', metodo, BrCotacao::Errors::CotacaoNaoEncontradaError
  end
end

shared_examples_for 'dia com cotacao' do |metodo|

    it "deve retornar o valor esperado para o metodo #{metodo}" do
    subject.send(metodo, data_pesquisada).should eq(valor_esperado)
  end
end

shared_examples_for 'cotacao tempo real' do |metodo|
  context 'sistema de cotação não está funcionando' do
    let(:erro)   { BrCotacao::Errors::CotacaoAgoraNaoEncontradaError }

    before do
      Net::HTTP.stub(:get_response).and_return(double(:msg => 'ERROR'))
    end

    it 'deve lançar um erro' do
      expect { subject.send metodo }.to raise_error erro
    end
  end

  context 'sistema de cotação está funcionando' do
    before do
      Net::HTTP.stub(:get_response).and_return(double(:msg => 'OK', :body => fixure('cotacao.json')))
    end

    it "deve retornar a cotacao em um hash" do
      subject.send(metodo)[:compra].should eql(3.7522)
    end

    it "deve retornar a data em um hash" do
      subject.send(metodo)[:data].should eql(Time.parse('2018-10-10 23:59:57 -0300'))
    end
  end
end
