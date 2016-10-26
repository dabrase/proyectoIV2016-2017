require 'test/unit'
require 'shoulda'

require_relative '../lib/recomendacion/informacion_usuario'


class InformacionUsuarioTest < Test::Unit::TestCase

  context "Test informacion relativa usuario" do
    setup do
      @usuario= Recomendacion::Informacion_Usuario.new("anonimo")
     end
     
     should "Debe de tener el nombre introducido en el constructor:" do
       assert_equal "anonimo", @usuario.nombre_usuario
     end
     
   end
     
     

end
