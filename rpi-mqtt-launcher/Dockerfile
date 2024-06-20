FROM acrelle/rpi-mqtt:linux-arm8

LABEL maintainer="anthony@relle.co.uk"

RUN mkdir -p /app/mqtt-launcher/ && \
 git clone https://github.com/jpmens/mqtt-launcher /app/mqtt-launcher && \
 cd /app/mqtt-launcher && git reset --hard 1c2038d42c7c03aeec341c5ae5973c1f6c9ce3fc && \
 chmod +x /app/mqtt-launcher/mqtt-launcher.py

ENV MQTTLAUNCHERCONFIG=/config/mqtt-launcher.conf

COPY start.sh /app

CMD [ "/app/mqtt-launcher/mqtt-launcher.py" ]
