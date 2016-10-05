Proyecto queveobot


Bot de Telegram que te recomienda peliculas similares a aquellas que le pases por mensaje.

Para desarrollar el proyecto es necesario contar con un servidor en el cual alojar el bot junto con una base de datos para  poder almacenar que peliculas se han recomendado a que usuario y poder ofrecerles nuevas recomendaciones. 

Como un bot que te responde a la mediahora no es muy atractivo este necesita estar pendiente todo el tiempo por lo cual es necesario alojarlo en alguna plataforma en la nube. Esto hace también que sea necesaria alguna forma de "empaquetar" todo el proceso de instalación del bot de tal manera que pueda ser trasladado de una plataforma en la nube sin tener que estar empezando de 0.

Que necesita el proyecto:

* Bot tiene que estar continuamente online.
* Necesita poder almacenar información.
* Necesita automatizar todo el proceso de instalación y configuración en un nuevo servidor.
* Necesita disponer de un entorno de pruebas.
* Es necesario automatizar test para probar que el bot ante un cambio introducido funciona correctamente.

Herramientas que se prevee que se van a necesitar:

* ***laaS*** como Azura, Exoscale, Amazon.. para poder alojar el bot en la nube y que este "online" todo el tiempo.

* Como entorno de pruebas se prevee Docker.

* Para automatizar el despliege y la gestión de configuraciones  en el laaS se usuará  Ansible o Cheff.

* Para el despliegue continuo usaremos Jenkins o Travis para ir probando todo cambio que se realize en la aplicación y asi confirmar que el cambio se ha introducido en la aplicación correctamente.

* Uso de fabric para el lanzamiento de la aplicación en el servidor.

El desarrollo se hará utilizando la API de Telegram posiblemente utilizando Ruby o bien en Python aunque no se descarta experimentar con alguno nuevo como Go. 





