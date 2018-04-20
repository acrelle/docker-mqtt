FROM python:2.7

LABEL maintainer="anthony@relle.co.uk"

RUN pip install paho-mqtt && apt update && apt install -y mosquitto-clients

RUN groupadd -r abc && \
useradd --no-log-init -r -g abc abc && \
mkdir -p /app /config

COPY start.sh setupuser.sh /app/

WORKDIR /app
VOLUME "/config/"
ENTRYPOINT [ "/app/start.sh" ]

CMD [ "bash" ]
