#getting base image ubuntu
FROM ubuntu:latest

LABEL Jorge Carrizales <jorge.alberto.carrizales@gmail.com>

WORKDIR /root

RUN  apt-get -y update && \ 
apt-get install -y apt-utils unzip curl pip && \
pip install csvkit 

ADD covid19_sonora.sh /root/covid19_sonora.sh

ENTRYPOINT ["bash", "covid19_sonora.sh"]


