# encoding: UTF-8
require 'test/unit'
require 'shoulda'

require_relative '../bin/queveo'
require_relative '../config/database'


#Ahora mismo los test son muy básicos más adelante se añadiran
#test con el objetivo de testear al bot midiendo sus ouputs en función de inputs que recibe de un "usuario"
class DBTest < Test::Unit::TestCase

  context "Testea las bases de datos asociadas al bot" do
    setup do
      @db=Configuracion::Base_Datos.new('datos_usuario');
      @db= @db.db

      @db.create_table? :usuarios do
        primary_key  :id
        String :nombre_usuario
        String :pelicula
       index :nombre_usuario
      end



     end

     should "Es posible insertar datos de usuarios y borrarlos" do
       usuarios=@db.from(:usuarios)
       usuario_aleatorio=(0...8).map { (65 + rand(26)).chr }.join
       pelicula_aleatoria=(0...8).map { (65 + rand(26)).chr }.join
       usuarios.insert(:nombre_usuario => usuario_aleatorio, :pelicula => pelicula_aleatoria)
       assert_equal @db.from(:usuarios).where(:nombre_usuario => usuario_aleatorio).where(:pelicula => pelicula_aleatoria).all[0][:nombre_usuario], usuario_aleatorio
       assert_equal @db.from(:usuarios).where(:nombre_usuario => usuario_aleatorio).where(:pelicula => pelicula_aleatoria).all[0][:pelicula], pelicula_aleatoria
       assert_equal 1,@db.from(:usuarios).where(:nombre_usuario => usuario_aleatorio).where(:pelicula => pelicula_aleatoria).delete
     end


   end



end
