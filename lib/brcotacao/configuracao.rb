# encoding: utf-8
module BrCotacao

  # Esta Classe possui metodos que definem algumas configuracoes da gem
  #
  # Author:: Bruno Vicenzo
  # Licença:: GPL
  class Configuracao

    # retorna os dados das moedas (classes, codigo, nome, simbolo e etc)
    def self.moedas
      YAML::load(File.read(File.join(DIRETORIO_RAIZ, 'dados', 'moedas.yml')))
    end

  end

end
