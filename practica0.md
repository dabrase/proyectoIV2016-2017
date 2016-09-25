#Practica 0
	
##Prerequisitos


 - [x] Haber rellenado en la hoja de cálculo correspondiente la equivalencia entre nombre real y nick en GitHub.
 - [x] Haber cumplimentado los objetivos de la primera sesión. 

##Realización práctica 0.

###Creación de par claves y subida a github.

Para crear el par de claves públicas privadas ejecutamos la orden ssh-keygen con nuestro correo:
```
ssh-keygen -t rsa -b 4096 -C "luisgguijarro9@gmail.com"
```

Tras lo cual nos vamos a github.com al apartado de Setting de nuestro perfil y en la pestaña de "SSH y GPG keys" le damos a añadir nueva clave y en el apartado key copiamos el contenido de ~/.ssh/id_rsa.pub y le damos a añadir.


![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracle51.png)


### Configuración correcta del nombre y correo electrónico para que aparezca en los commits.

Utilizamos la orden 

```
 git  config --global user.xxxxxx

```

En la siguiente captura configuramos el email y el nombre para que aparezcan en los commits:

![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracle52.png)


###Creamos un hito.

Creamos como hito entregar la practica 0.

![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracl61.png)

Y a continuación creamos como primer issue actualizar el README con los datos que se nos piden en el guión de la práctica 0.

![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracl62.png)

###Creamos una rama para entregar practica0.

En primer lugar clonamos el repositorio, tras lo cual obtenemos los cambios que se ha realizado en el repositorio para evitar que la rama esté desincronizada. A continuación creamos la rama y la "empujamos" a github.

![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracle71.png)


A continuación empezamos a cumplimentar los issues:


![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracle73.png)


En primer lugar actualizamos el README del proyecto cerrando en el commit el issue #4.

![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracle77.png)

Ahora añadimos el fichero .gitignore al repositorio del proyecto.

![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracle79.png)

A continuación como entiendo que la explicación de como se ha hecho la practica 0 constituye material externo cambio a la rama hito0 y ahí subo las capturas y el fichero .md que constituye la explicación de la práctica 0.


![img](https://github.com/LuisGi93/proyectoIV2016-2017/blob/hito0/capturas/oracle80.png)




