# encoding: utf-8
module BrCotacao

  # Esta Classe possui metodos que definem algumas configuracoes da gem
  #
  # Author:: Bruno Vicenzo
  # Licença:: GPL
  class Configuracao

    # Retorna o diretório raiz da gem
    def self.diretorio_raiz
      Dir.pwd
    end

    # retorna os dados das moedas (classes, codigo, nome, simbolo e etc)
    def self.moedas
      YAML::load(File.read(File.join(self.diretorio_raiz, 'dados', 'moedas.yml')))
    end

  end

end
