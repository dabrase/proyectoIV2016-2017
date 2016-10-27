#Proyecto Infraestructura virtual. queveobot
[![Build Status](https://travis-ci.org/LuisGi93/proyectoIV2016-2017.svg?branch=master)](https://travis-ci.org/LuisGi93/proyectoIV2016-2017)

##1.- Descripción.

El fin del proyecto a desarrollar es ~~una web~~ un bot de Telegram que aconseje peliculas a un usuario que interaccione con el (él o el, objeto :?). Por tanto a traves de la interfaz de Telegram se llevará a cabo la interacción entre máquina y hombre de tal forma que ambos mutuamente comprendan que es lo que quieren de cada uno.

Los servicios *mínimos* que necesita el bot son:
 - Servicio que al recibir el nombre de una pelicula obtenga peliculas parecidas y responda. El usuario podrá indicar que peliculas ha visto y el bot devolverá el resultado en función de la información almacenada sobr el usuario. Actualemente se está estudiando que más funcionalidades se pueden expandir por aqui.

Otros servicios:
 - Servicio de logs para poder almacenar todo lo que le ocurre al bot.
 - Servicio que monitorize el estado de todos los demás servicios y en caso de detectar fallo en alguno avise al responsable humano via email o via telegram.
 - Primer servicio que reciba las peticiones y le pase la pelota al servicio correspondiente.

Idealmente se preveé el uso de un servidor para cada servicio pero probablemente se tendrá que aglutinar algunos de los servicios en el mismo. Será necesario almacenar que peliculas ha visto que usuario para lo cual se utilizará una base de datos y posiblemente otra base de datos para almacenar todos los logs que genere el bot. No se descarta la modificación de esta estructura ni de la eliminación de servicios o de añadir más en función del desarrollo del proyecto.

El lenguaje elegido para desarrollar el bot es ~~python~~ Ruby.
###1.1.- Que vamos a utilizar
Como es lógico para realizar el proyecto se utilizará el desarrollo basado en pruebas junto con integración continua para lo cual más adelante se especificarán que herramientas utilizaremos.  Las herramientas exactas a utilizar se verá conforme avanze el proyecto.

## 2.- Desarrollo basado en pruebas. Hito 2.<sub><sup>Entrega la he realizado a las 14:20 según el bot la hora tope era a las 14:30 sino tengo retraso :S la lié con el git</sup></sub>


### 2.1- Herramientas de desarrollo
Para controlar que la aplicación funciona para diferentes versiones de Ruby se utiliza RVM, actualmente se ha testeado que funciona tanto para la versión 2.3.1 de Ruby y para la 2.2.5.


![img](https://i.sli.mg/ZdCfmm.png)
### 2.2.- Construcción de la aplicación

Se utiliza [Bundler](http://bundler.io/) para especificar todas las dependencias asociadas a la aplicación y poder instalar todo lo necesario de manera automática.

Nada más hace falta hacer el comando en el directorio raiz del proyecto:
```shell
$ bundle install
```
### 2.3.- Test

Utilizamos [Shoulda](https://github.com/thoughtbot/shoulda) y el framework para testing de Ruby  [Test::Unit](http://ruby-doc.org/stdlib-1.8.7/libdoc/test/unit/rdoc/Test/Unit.html) de Ruby para la creación de los test y para probar automáticamente que los test  se pasan correctamente utilizamos [Rake](https://github.com/ruby/rake). El script de Rake lee todos los scripts contenidos en la carpeta test, cada uno de estos ficheros test tiene en su interior una serie de aserciones asociadas a una clase de ruby  y cada una de estas asercciones comprueba alguna función de la clase sobre la que versa el fichero. 

La combinación de Shoulda y Test::Unit y no de otras herramientas para testeo de aplicaciones en Ruby a sido por su facilidad de uso, su utilización extendida para crear  los test y su claridad para expresar que es lo que hace el test.

Se pueden ejecutar los test con el comando:
```
rake test
```

![img](https://i.sli.mg/1jXIci.png)
### 2.4.- Integración continua.

Para comprobar que los cambios realizados en nuestra aplicación "funcionan" fuera de nuestro entorno de desarrolo y que la instalación de dependencias y la ejecución de los tests se realiza automáticamente utilizamos [Travis](https://travis-ci.org/). Para que Travis pueda "probar" nuestra aplicación escribimos en un fichero [.travis.yml](https://github.com/LuisGi93/proyectoIV2016-2017/blob/master/.travis.yml) la configuración que utiliza nuestra aplicación en el cual por ejemplo indicamos que nuestra aplicación utiliza el Lenguaje Ruby y las versiones de Ruby que utiliza nuestra aplicación.

Travis automáticamente detecta la ["gema"](https://github.com/LuisGi93/proyectoIV2016-2017/blob/master/Gemfile) asociada a nuestra aplicación y utiliza Bundler para instalar y cargar todo lo especificado en ella. A continuación utiliza Rake para la ejecución de los test especificados en nuestro fichero [Rakefile](https://github.com/LuisGi93/proyectoIV2016-2017/blob/master/Rakefile)

La utilización de Travis viene justificada por su uso extendido, su facil integración con cualquier cambio que hagas sobre tu repositorio de Github y su amigable utilización.

![img](https://i.sli.mg/OvlcRv.png)


