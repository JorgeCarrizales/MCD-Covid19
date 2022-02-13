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

#### 2.- Crear imagen docker. En este caso, una de ubuntu
```shell
docker build -t ubuntu .
```

#### 3.- Crear un contenedor
```shell
docker create -i --name ubuntu_container_covid19 ubuntu
```

#### 4.- Ejecutamos el script
```shell
docker exec -it ubuntu_covid19_script bin/bash
```

## Obtención de los datos paso a paso

_**Para realizarlo paso a paso, es necesario realizar los primeros 3 pasos anteriores.**_

_**Para poder realizar la práctica, tambien es necesario crear una cuenta en dockerhub. [Registrarse en docker](https://hub.docker.com/signup)**_

#### 1.- Iniciar sesión en dockerhub (en caso de que se requiera)
```shell
docker login
```
Les pedirá su usuario y contraseña de dockerhub
<p align="center">
<img src="https://github.com/JorgeCarrizales/MCD-Covid19/raw/main/images/GIT.png" width="300" height="200" border="1"/>
</p>

#### 2.- Correr la imagen de ubuntu
```shell
docker run -it --name datacovid19 ubuntu
```
#### 3.- Descargar actualizaciones de ubuntu
```shell
cd
apt-get update
```

#### 4.- Instalar los recursos necesarios
```shell
cd
apt-get install curl unzip less vim nano pip tldr
```
- Curl: Sirve para descargar archivos por internet
- unzip: Sirve para descomprimir archivos
- less: Sirve para poder ver los arvhicos
- vim / nano: Sirve para editar los archivos
- pip: sirve para instalar paquetes de python
- tldr: (to long dont read) sirve para "resumir" lo

#### 5.- Descargar archivo de donde obtendremos los datos
```shell
curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip
ls
```
#### 6.- Descargamos el diccionario de los datos de covid
```shell
curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/diccionario_datos_covid19.zip
ls
```

- -L: Si hay links simbolicos, que los obtenga del ingresado
- -O: Guarda el archivo como venga el nombre del link
- Ejecutamos ls para verificar la descarga del archivo

#### 7.- Descomprimimos los archivos
```shell
unzip datos_abiertos_covid19.zip
unzip diccionario_datos_covid19.zip
ls
```
Una vez hecho, verificamos que se haya descomprimido.

#### 8.- Instalar csvkit
```shell
pip install csvkit
```
csvkit es una paquetería de python que nos permite realizar distintas acciones en archivos csv (excel)

#### 9.- Obtener los nombres de las columnas
```shell
csvcut -n datos_abiertos_covid19.csv
```
- -n obtiene los nombres de las columnas

#### 10.- Dejamos solo los dataos de Sonora
```shell
csvgrep -c nombre_del_archivo.csv
```
- -c hace referencia al nombre de la columna
