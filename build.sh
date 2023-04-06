#!/bin/bash

if [[ $(which dpkg) ]]; then
	BUILDARCH=$(dpkg --print-architecture)
else
	echo "Command 'dpkg' not found."
	exit 1
fi

BUILDFILE="Dockerfile.$BUILDARCH"

docker build -f $BUILDFILE -t klab-webtop .
