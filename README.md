# Covid 19 en el estado de Sonora  

<p align="center">
<img src="https://github.com/JorgeCarrizales/MCD-Covid19/raw/main/images/network-g652d2fe49_1920.jpg" width="900" height="200"/>
</p>

La realización de esta práctica es para obtener las personas de edad entre 20 y 39 años confirmadas de covid 19 en Sonora.

## Recursos e instalaciones previas
- Descargar e instalar _**git**_: El siguiente lick te dirigirá a la página oficial de Git [Ver Git](https://git-scm.com/downloads)
<p align="center">
<img src="https://github.com/JorgeCarrizales/MCD-Covid19/raw/main/images/GIT.png" width="400" height="500" border="1"/>
</p>

- Descargar e instalar _**Docker**_: El siguiente link te dirigirá a "Get Docker" de la plataforma oficial de _**Docker**_ [Ver docker](https://docs.docker.com/get-docker/)
<p align="center">
<img src="https://github.com/JorgeCarrizales/MCD-Covid19/raw/main/images/DownloadDocker.png" width="400" height="500" border="1"/>
</p>

- Descargar los datos proporcionados por la dirección general de epidemiología de México [Click para Descargar](https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip)

<sub>Los datos utilizados en esta página son datos de uso libre proporcionados por Datos Abiertos Dirección General de Epidemiología de México</sub>

## Obtención de los datos mediante script

#### 1.- Clonar el repositorio en la carpeta deseada
```shell
git clone https://github.com/JorgeCarrizales/MCD-Covid19.git
```

#### 2.- Dentro de la carpeta del repositorio, ejecutar el siguiente comando.
```shell
docker build -t ubuntu .
```

#### 3.- Creamos un contenedor
```shell
docker create -i --name ubuntu_covid19 ubuntu
```

#### 4.- Ejecutamos el script
```shell
docker exec -it ubuntu_covid19 bin/bash
```

##
