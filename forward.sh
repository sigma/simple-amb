#!/bin/bash

exec ncat --sh-exec "ncat `echo $1 | awk -F':' '{print $1, $2}'`" -l 10000 --keep-open
