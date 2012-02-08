require 'brcotacao'
require 'date'
require 'shared_tests/moedas_spec'


def fixure(nome)
  File.read(File.join(DIRETORIO_RAIZ, 'spec', 'fixtures', nome))
end
