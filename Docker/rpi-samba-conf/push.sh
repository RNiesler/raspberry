#!/bin/bash
IMAGE_NAME=rpi-samba-conf
docker tag rniesler/$IMAGE_NAME localhost:5000/rniesler/$IMAGE_NAME
docker push localhost:5000/rniesler/$IMAGE_NAME
