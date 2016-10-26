require 'net/http'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'
require "resolv-replace.rb"
require 'json'

module Recomendacion
# Engloba los datos asociados a una solicitud de recomendacion.
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

    def add_pelicula_vista(titulo)
      @yavistas << titulo
    end

    def generar_recomendaciones

    end

  end
end
