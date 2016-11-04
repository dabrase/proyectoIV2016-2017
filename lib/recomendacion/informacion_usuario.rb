

module Recomendacion
# Engloba los datos asociados a una solicitud de recomendacion.
  class Informacion_Usuario

    attr_reader :nombre_usuario
    attr_accessor :peliculas_vistas
    def initialize(titulo)
      @nombre_usuario=titulo
      @peliculas_vistas=Array.new
    end

    def to_s
      return "#@titulo"
    end
#Evidentemente esta einformación es volatil si no se almacena en una base de datos
#es necesario que se guarden las peliculas que ha visto un usuario del bot
    def aniadir_pelicula_vista(titulo)
      @peliculas_vistas << titulo
    end

    def obtener_peliculas_vistas
      return @peliculas_vistas
    end

    def generar_recomendaciones

    end



  end
end
