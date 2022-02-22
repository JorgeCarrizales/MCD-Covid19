# Covid 19 en el estado de Sonora  

<p align="center">
<img src="https://github.com/JorgeCarrizales/MCD-Covid19/raw/main/images/network-g652d2fe49_1920.jpg" width="900" height="200"/>
</p>

La realización de esta práctica es para obtener las personas de edad entre 20 y 39 años confirmadas de covid 19 en Sonora.

## Recursos e instalaciones previas
- Descargar e instalar _**git**_: El siguiente lick te dirigirá a la página oficial de Git [Ver Git](https://git-scm.com/downloads)

- Descargar e instalar _**Docker**_: El siguiente link te dirigirá a "Get Docker" de la plataforma oficial de _**Docker**_ [Ver docker](https://docs.docker.com/get-docker/)

<sub>Los datos acerca del covid 19 utilizados en esta página son datos de uso libre proporcionados por <b>Datos Abiertos Dirección General de Epidemiología de México. [Ver más](https://www.gob.mx/salud/documentos/datos-abiertos-152127) </b></sub>

## Obtención de los datos

#### 1.- Clonar el repositorio en la carpeta deseada
```shell
git clone https://github.com/JorgeCarrizales/MCD-Covid19.git
```

#### 2.- Dentro de la carpeta del repositorio, ejecutar el siguiente comando para crear la imagen
```shell
docker build -t covid19_sonora .
```

#### 3.- Creamos un contenedor en base a la imagen creada
```shell
docker create -i --name covid19_container covid19_sonora
```

#### 4.- Se inicia el contenedor
```shell
docker start covid19_container
```
<sub>**NOTA: También se puede iniciar el contenedor utilizando su ID solo sustituyendo el nombre por el ID (en caso de no permitirte iniciarlo utilizando el nombre)**</sub>

#### 5.- Se ejecuta el script para descargar y filtrar los datos
```shell
docker exec -it covid19_container bash
```

#### 6.- Una vez finalizado el filtrado, copiamos el archivo final obtenido de nuestro contenedor y lo guardamos en nuestro ordenador.
```shell
docker cp covid19_container :/root/COVIDSONORA_20_39_POSITIVOS.csv
```

## Resultado
Una vez copiado el archivo podremos visualizar el resultado final el cual es: Personas de edad entre 20 y 39 años con resultado positivo a covid 19 en el estado de Sonora.
