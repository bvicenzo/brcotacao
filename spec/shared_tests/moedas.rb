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
