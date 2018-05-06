FROM python:2.7

LABEL maintainer="anthony@relle.co.uk"

RUN pip install --upgrade pip setuptools
RUN pip install paho-mqtt RPi.GPIO pyserial && apt update && apt install -y mosquitto-clients

# From Raspian
ARG GPIO_GID=997

RUN mkdir -p /app/adafruit-python/ && \
git clone https://github.com/adafruit/Adafruit_Python_DHT.git /app/adafruit-python/ && \
cd /app/adafruit-python/ && \
python setup.py install --force-pi2

RUN groupadd -g ${GPIO_GID} -o gpio && \
groupadd -r abc && \
useradd -m --no-log-init -r -g abc -G gpio abc && \
mkdir -p /config

COPY start.sh setupuser.sh /app/

WORKDIR /app
VOLUME "/config/"
ENTRYPOINT [ "/app/start.sh" ]

CMD [ "bash" ]
