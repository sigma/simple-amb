#!/bin/bash

ADDR=${1:-$FORWARD_ADDR}
exec ncat --sh-exec "ncat `echo $ADDR | awk -F':' '{print $1, $2}'`" -l 10000 --keep-open
