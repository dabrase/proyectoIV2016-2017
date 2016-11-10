require 'net/http'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'
require "resolv-replace.rb"
require 'json'
require_relative '../../config/database'

module Recomendacion
# Engloba los datos asociados a una solicitud de recomendacion. Busca recomendaciones a partir de los datos de un usuario
#y del titulo insertado
  class Sugerencias

    attr_reader :titulo, :lista_sugerencias

    def initialize(titulo)
      @titulo=titulo
      @lista_sugerencias=Array.new
      @db=Configuracion::Base_Datos.new('datos_usuario').db;
    end

    def to_s
      return "#@titulo"
    end

#Corazon de la clase, busca sugrencias basandose en los datos de la web tastekid.com. Y devuelve
#un array con todas las recomendaciones.
    def generar_sugerencias

      uri = URI('https://www.tastekid.com/api/similar')
      params = { :q => @titulo, :k => ENV['TOKEN_TASTEKID'] }
      uri.query = URI.encode_www_form(params)

      page = Net::HTTP.get(uri)

      my_hash = JSON.parse(page)

      keys = my_hash.keys

      my_hash.each do |key, array|

        array.each{|x|

          x.each{|key|


      		if x==1
      		key.each{ |y|
            @lista_sugerencias << y["Name"]

      		}
      		end

      		if key == "Results"
      			x=1;
      		end
           }


      }



      end
  end

  end
end
