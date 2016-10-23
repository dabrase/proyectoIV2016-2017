#Proyecto Infraestructura virtual.

## Descripción.

El fin del proyecto a desarrollar es ~~una web~~ un bot de Telegram que aconseje peliculas a un usuario que interaccione con el (él o el, objeto :?). Por tanto a traves de la interfaz de Telegram se llevará a cabo la interacción entre máquina y hombre de tal forma que ambos mutuamente comprendan que es lo que quieren de cada uno.

Los servicios *mínimos* que necesita el bot son:
 - Servicio que al recibir el nombre de una pelicula obtenga peliculas parecidas y responda.

Otros servicios:
 - Servicio de logs para poder almacenar todo lo que le ocurre al bot.
 - Servicio que monitorize el estado de todos los demás servicios y en caso de detectar fallo en alguno avise al responsable humano via email o via telegram.
 - Primer servicio que reciba las peticiones y le pase la pelota al servicio correspondiente.

Idealmente se preveé el uso de un servidor para cada servicio pero probablemente se tendrá que aglutinar algunos de los servicios en el mismo. Será necesario almacenar que peliculas ha visto que usuario para lo cual se utilizará una base de datos y posiblemente otra base de datos para almacenar todos los logs que genere el bot. No se descarta la modificación de esta estructura ni de la eliminación de servicios o de añadir más en función del desarrollo del proyecto.

## Que vamos a utilizar
Como es lógico para realizar el proyecto se utilizará el desarrollo basado en pruebas junto con integración continua para lo cual más adelante se especificarán que herramientas utilizaremos.  Las herramientas exactas a utilizar se verá conforme avanze el proyecto.

El lenguaje a utilizar es ~~python~~ Ruby aunque si se descubre que la API le falta funcionalidad se cambiará a NodeJS.
