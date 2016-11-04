# encoding: UTF-8

require 'sequel'


# Engloba los datos asociados a una solicitud de recomendacion. Busca recomendaciones a partir de los datos de un usuario
#y del titulo insertado

module Configuracion

# Engloba los datos asociados a una solicitud de recomendacion. Busca recomendaciones a partir de los datos de un usuario
#y del titulo insertado
  class Base_Datos
      attr_reader :db
      def initialize(tipo)
        ##Pensado en que vamos a tener multples bases de datos creamos una clase que las "unifique"
        case tipo
          when 'datos_usuario'
            @db=Sequel.connect(ENV['POSTGRES_DATABASE'])
          else
            @db=Sequel.connect(ENV['POSTGRES_DATABASE'])
          end
        end
      end
end
