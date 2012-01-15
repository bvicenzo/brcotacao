# encoding: utf-8

DIRETORIO_RAIZ = "#{File.dirname(__FILE__)}/.."

$:.unshift(DIRETORIO_RAIZ) unless
  $:.include?(DIRETORIO_RAIZ) || $:.include?(File.expand_path(DIRETORIO_RAIZ))

diretorio_libs = File.join(DIRETORIO_RAIZ, 'lib', 'brcotacao')
$:.unshift(diretorio_libs) unless
  $:.include?(diretorio_libs) || $:.include?(File.expand_path(diretorio_libs))

require 'net/http'
require 'ostruct'
require 'yaml'
%w(configuracao moedas version errors).each {|req| require File.dirname(__FILE__) + "/brcotacao/#{req}"}

module BrCotacao
end
