FROM ubuntu:wily-20160121
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN sudo apt-get install --reinstall software-properties-common
RUN sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
RUN sudo apt-get update
RUN sudo apt-get install python-software-properties
RUN sudo apt-get install mosquitto
EXPOSE 1883
CMD mosquitto
