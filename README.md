#Proyecto Infraestructura virtual. 

## Descripción.
Proyecto que va a consistir en una aplicación web que permita a los usuarios encontrar peliculas similares a alguna que les guste. Para ello es necesario poder añadir peliculas al sistema junto con algún sistema de votación que permita a los usuarios a partir de una pelicula votar peliculas que piensan que tienen una temática similar a esta .

La aplicación distingue entre dos usuarios que en principio podrán desarrolar las siguientes acciones:

* El administrador que puede realizar las siguientes acciones;
	- Añadir peliculas.
	- Eliminar las peliculas.
	- Listar las peliculas
	
 	
* El usuario sin registrar  que puede
	- Buscar peliculas
	- Votar peliculas similares.
	- Proponer peliculas.
	
	
El proyecto va a consistir en una web de recetas de cocina, en ella se podran subir recetas por parte de los usuarios registrados por lo cual será necesario tener un servicio para la autenticación de los usuarios y además un servicio de logs ya que se podrá hacer sugerencias sobre las recetas y es necesario monitorizar si  alguién inscribe alguna clase de insulto. También por motivos estadísticos. También hace falta un servicio para recibir sugerencias asociadas con una receta.
	
	
##Que necesita el proyecto:

* Necesita estar continuamente online.
* Necesita poder almacenar información.
* Necesita automatizar todo el proceso de instalación y configuración en un nuevo servidor.
* Necesita disponer de un entorno de pruebas.
* Es necesario automatizar test para probar que el sistema responde correctamente ante  un cambio introducido.

Para el desarrollo del proyecto se usará Django.
