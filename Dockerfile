FROM python:2.7

LABEL maintainer="anthony@relle.co.uk"

RUN pip install paho-mqtt && apt update && apt install -y mosquitto-clients lirc

RUN mkdir -p /app/mqtt-launcher/ && git clone https://github.com/jpmens/mqtt-launcher /app/mqtt-launcher/

COPY hardware.conf lircd.conf /etc/lirc/
COPY start.sh /app/start.sh

ENV MQTTLAUNCHERCONFIG=/config/mqtt-launcher.conf

WORKDIR /config
VOLUME "/config/"
CMD "/app/start.sh"
