#!/bin/bash

/app/setupuser.sh

service lirc start

su -c "$@" abc 
