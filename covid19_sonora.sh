#!/bin/sh
echo "Scrip que obtiene los datos de personas de edad entre 20 y 39 años confirmadas de covid 19 en Sonora. "
echo "Descargando los datos . . ."
curl -L -O curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip
echo "Descomprimiendo datos. . ."
unzip datos_abiertos_covid19.zip
echo "Ingresa el nombre del archivo .csv obtenido al descrimprimir datos_abiertos_covid19.zip: el nombre del archivo csv contiene la palabra COVID19MEXICO"
ls
read name_data
echo "Tomando solo datos de Sonora."
csvgrep -c ENTIDAD_RES -r 26 $name_data > COVIDSONORA.csv
echo "Tomando solo datos de personas de entre 20 y 39 años"
csvgrep -c EDAD -r "^[2-3][0-9]$" COVIDSONORA.csv > COVIDSONORA_20_39.csv
echo "Tomando solo los casos positivos"
csvgrep -c RESULTADO_ANTIGENO -r "1" COVIDSONORA_20_39.csv > COVIDSONORA_20_39_POSITIVOS.csv
echo "Eliminando los archivos csv"
rm COVIDSONORA.csv 
rm COVIDSONORA_20_39.csv 

echo "Se terminó el filtrado de información. Los datos resultantes los podras ver en el archivo llamado COVIDSONORA_20_39_POSITIVOS.csv"
