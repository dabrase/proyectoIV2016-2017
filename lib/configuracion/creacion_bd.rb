
require_relative 'base_datos'
db=Configuracion::Base_Datos.new('datos_usuario');

db.create_table! :usuarios{
  primary_key  :id
  String nombre_usuario
  String pelicula
  index: nombre_usuario
}





#db.run "CREATE TABLE people (id serial primary key, name varchar(255))"
