require 'net/http'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'
require "resolv-replace.rb"
require 'json'

module Recomendacion
# Engloba los datos asociados a una solicitud de recomendacion. Busca recomendaciones a partir de los datos de un usuario
#y del titulo insertado
  class Sugerencias

    attr_reader :titulo, :recomendaciones, :yavistas

    def initialize(titulo,usuario)
      @titulo=titulo
      @recomendaciones=Array.new
	    @usuario=usuario
    end

    def to_s
      return "#@titulo"
    end

#Corazon de la clase, busca sugrencias basandose en los datos de la web tastekid.com. Y devuelve
#un array con todas las recomendaciones.
    def generar_recomendaciones(titulo)

      uri = URI('https://www.tastekid.com/api/similar')
      params = { :q => pelicula, :k => ENV['TOKEN_TASTEKID'] }
      uri.query = URI.encode_www_form(params)
    end


  end
end
