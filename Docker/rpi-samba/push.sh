#!/bin/bash
IMAGE_NAME=rpi-samba
docker tag rniesler/$IMAGE_NAME localhost:5000/rniesler/$IMAGE_NAME
docker push localhost:5000/rniesler/$IMAGE_NAME
