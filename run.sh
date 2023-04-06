#!/bin/bash

set -v
docker run -it --name klab-webtop -h webtop -p 5901:5901 -p 6901:6901 -v $HOME/Public:/host klab-webtop
