FROM acrelle/rpi-mqtt:linux-amd64

LABEL maintainer="anthony@relle.co.uk"

RUN mkdir -p /app/mqtt-launcher/ && \
 git clone https://github.com/jpmens/mqtt-launcher /app/mqtt-launcher

ENV MQTTLAUNCHERCONFIG=/config/mqtt-launcher.conf

COPY start.sh /app

CMD [ "/app/mqtt-launcher/mqtt-launcher.py" ]
