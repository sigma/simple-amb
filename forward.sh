#!/bin/bash

ADDR=${1:-$FORWARD_ADDR}
exec socat TCP-LISTEN:10000,fork TCP:$ADDR
