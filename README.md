Además se#Bot de Telegram:  queveobot.
[![Build Status](https://travis-ci.org/LuisGi93/proyectoIV2016-2017.svg?branch=master)](https://travis-ci.org/LuisGi93/proyectoIV2016-2017)

### 1.- Descripción.

El proyecto a desarrollar es un bot de Telegram que recomendará peliculas a un usuario que contacte con el  en función del titulo de una pelicula. Este bot tiene que ser capaz de guardar que peliculas le ha pedido el usuario para no recomendarle peliculas que ya ha visto. También se están estudiando funcionalidades adicionales tales como hacer un sistema de votación para peliculas y mostrar las peliculas más populares entre los usuarios. 

Además se pretenden implementar los siguientes servicios:


 -   Servicio de logs para poder almacenar todo lo que le ocurre al bot.
 -  Servicio que monitorize el estado de todos los demás servicios y en caso de detectar fallo en alguno avise al responsable humano via email o via telegram.
 -  Primer servicio que reciba las peticiones y le pase la pelota al servicio correspondiente.
 -   Servicio de traducción de peliculas ya que ahora mismo solo reconoce peliculas en ingles.

El lenguaje elegido para desarrollar el bot es ~~python~~ Ruby.

###1.1.- Instalación.

Descargar desde github el proyecto como zip e instalar bundler:

´´´
gem install bundler
´´´


descomprimir y en el directorio donde se han descomprimido los fuentes ejecutar:

´´´
bundle install
´´´
Es necesario definir dos variables de entorno
TOKEN y TOKEN_TASTEKID. La primera con el token asociado a nuestro bot de telegram y el segundo token es necesario solicitarlo en la web tastekid.com


Actualmente el bot no se ejecuta automáticamente y por ahora solo responde cuando le mandas los comandos básicos.



