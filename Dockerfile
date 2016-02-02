FROM daocloud.io/library/ubuntu:vivid-20160122
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apt-get install -y  software-properties-common
RUN apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
RUN apt-get update
RUN apt-get install -y mosquitto
EXPOSE 1883
CMD mosquitto
