#!/bin/bash

# Based on the concepts used by linuxserver docker images

PUID=${PUID:-911}
PGID=${PGID:-911}

groupadd -r abc -g "$PGID" -o && useradd --no-log-init -r -g abc -u "$PUID" -o abc

chown -R abc:abc /app
chown -R abc:abc /config

echo "Starting LIRC Daemon"
service lirc start

echo "Starting MQTT-Launcher"
su -c "/app/mqtt-launcher/mqtt-launcher.py" abc 
