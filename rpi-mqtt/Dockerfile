FROM python:2.7

LABEL maintainer="anthony@relle.co.uk"

# From Raspian
ARG GPIO_GID=993

RUN pip install --no-cache-dir --upgrade pip setuptools && \
 pip install --no-cache-dir paho-mqtt RPi.GPIO pyserial && \
 apt-get update && apt-get install -y mosquitto-clients && \
 rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/adafruit-python/ && \
 git clone https://github.com/adafruit/Adafruit_Python_DHT.git /app/adafruit-python && \
 cd /app/adafruit-python/ && \
 python setup.py install --force-pi2 && \
 groupadd -g ${GPIO_GID} -o gpio && \
 groupadd -r abc && \
 useradd -m --no-log-init -r -g abc -G gpio,tty,dialout abc && \
 mkdir -p /config

COPY start.sh setupuser.sh /app/

WORKDIR /app
VOLUME [ "/config" ]
ENTRYPOINT [ "/app/start.sh" ]

CMD [ "bash" ]
