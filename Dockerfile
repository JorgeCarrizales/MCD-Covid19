#getting base image ubuntu
FROM ubuntu:latest

LABEL Jorge Carrizales <jorge.alberto.carrizales@gmail.com>

RUN mkdir -p /home/datacovid19

WORKDIR /home/datacovid19

RUN  apt-get -y update && apt-get install -y apt-utils unzip curl csvkit 

COPY covid19_sonora.sh  /home/datacovid19/covid19_sonora.sh

ENTRYPOINT ["/covid19_sonora.sh"]


