FROM daocloud.io/library/ubuntu:vivid-20160122
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
RUN sudo apt-get update
RUN sudo apt-get install python-software-properties
RUN sudo apt-get install mosquitto
EXPOSE 1883
CMD mosquitto
