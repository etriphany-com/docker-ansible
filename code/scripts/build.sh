#!/bin/sh

set -e
cd $(dirname $0)

docker build -f ../Dockerfile -t etriphany/docker-ansible "$(dirname `pwd`)"
