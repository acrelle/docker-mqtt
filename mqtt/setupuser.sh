#!/bin/bash

# Based on the concepts used by linuxserver docker images

PUID=${PUID:-911}
PGID=${PGID:-911}

groupmod -o -g "$PGID" abc
usermod -o -u "$PUID" abc

chown -R abc:abc /app
chown -R abc:abc /config
