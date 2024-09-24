## Ejecucion
ejecutar con docker
```sh
docker compose build
docker compose up
```

y abrir la url 

[http://127.0.0.1:8888/lab/workspaces/auto-t/tree/prueba.ipynb](http://127.0.0.1:8888/lab/workspaces/auto-t/tree/prueba.ipynb)

en ese link se encuentra la Notebook con el codigo python que se ejecuto para el proyecto


## carga:

Se eligio una db de Postgres, al ser la mas comun a usarse en el ambiente de python/linux y poseer buenas librerias y en los scripts se utilizo el lenguaje SQL para Postgres(posee pequeñas variaciones de palabras reservadas) 

## extraccion:

Se utilizo la libreria para python llamada Pandas para la edicion y modificacion de informacion al permitir cargar y editar facilmente grandes cantidades de informacion en python desde un csv y para cargarse facilmente desde la base de datos

## transformacion

El modelo proporcionado se tuvo que modificar:

+ `id varchar(24) NOT NULL` se incremento su longitud a 40 

+ `company_id varchar(24) NOT NULL` se incremento su longitud a 40

+ `updated_at` se le cambio el nombre a `paid_at`


hubo muchos datos faltantes(en el unico que se comprende que sean Null es en paid_at, ya que este campo tiene sentido que se actualice a futuro por los apgos de los clientes

habia muchos datos sucios, en el Notebook de python en el que se realizaron las modificaciones de los datos, se elimino los datos que no eran alfanumericos o el caracter guion bajo _ o el caracter espacio en los ids, y en los valores numericos los que no entraran en el rango del valor maximo de su campo(habia valores con notacion cientifica), asimismo en algunos `name` poseian la cadena 0xFFFFFF desde el csv, los cuales fueron eliminados, se indica que valores fueron removidos en el script


## dispersion 
![swagger](https://raw.githubusercontent.com/okadath/a.png)



## SQL

se agrego la vista usando codigo SQL por medio del script de python basandose en los cargos que ya estuvieran con el estado de paid, se muestra su evaluacion en el script

![swagger](https://raw.githubusercontent.com/okadath/a.png)


## parte 2

La parte2 se subio en un repositorio separado con su propio contenedor de Docker


[url](url) 
