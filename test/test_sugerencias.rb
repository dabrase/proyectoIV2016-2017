require 'test/unit'
require 'shoulda'

require_relative '../lib/recomendacion/sugerencias'


#Tests sobre la clase que se encarga de hacer sugerencias
#Todo: para un usuario no devolver aquellas peliculas que ya haya visto, variar el numero de peliculas a mostrar...
class SugerenciasTest < Test::Unit::TestCase

  context "Realiza test asociados a las recomendaciones sugeridas para un usuario en concreto" do
    ##Titulo para buscar peliculas parecidas el padrino, usuario asociado a las sugerencias Morgan Freeman
    setup do
      @sugerencias = Recomendacion::Sugerencias.new("The Godfather","Morgan Freeman")
     end

     should "Devuelve sugerencias" do
       @sugerencias.generar_recomendaciones
       contiene_elementos=@sugerencias.lista_sugerencias.size > 5
       assert_equal contiene_elementos, true
     end
     should "Devuleve peliculas parecidas" do
       @sugerencias.generar_recomendaciones
       assert_contains(@sugerencias.lista_sugerencias, "The Godfather Part III" , "No devuelve peliculas parecidas")
     end
   end



end
