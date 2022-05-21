#!/bin/sh

set -e
cd $(dirname $0)

if [ ! -z "$CR_PAT" ]
then
    docker tag etriphany/ansible:latest ghcr.io/etriphany/ansible:1.0.0
    echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
    docker push ghcr.io/etriphany/ansible:1.0.0
else
    echo "Missing CR_PAT \nCheck: https://github.com/settings/tokens"
fi