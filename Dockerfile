FROM daocloud.io/library/ubuntu:vivid-20160122
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apt-get install -y  software-properties-common
RUN apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
RUN apt-get update
RUN apt-get install -y mosquitto
RUN iptables -A INPUT -p tcp --dport 1883 -j ACCEPT
RUN service iptables save
EXPOSE 1883
CMD mosquitto
