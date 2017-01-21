#!/bin/bash

set -e

ARGS=$@

source /etc/profile.d/rvm.sh

exec $ARGS