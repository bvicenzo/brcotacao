# encoding: utf-8
$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'net/http'
require 'ostruct'
require 'yaml'
%w(configuracao moedas version errors).each {|req| require File.dirname(__FILE__) + "/brcotacao/#{req}"}

module BrCotacao
end
