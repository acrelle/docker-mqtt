FROM acrelle/mqtt-launcher:rpi

LABEL maintainer="anthony@relle.co.uk"

RUN apt install -y lirc

COPY hardware.conf lircd.conf /etc/lirc/
COPY start.sh /app

