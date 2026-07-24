#!/bin/bash

set -x 
set -e
set -o pipefail

ACCOUNT_ID=047719635525
AWS_REGION=ap-south-1
IMAGE_REPO_NAME=web-app

aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com
docker pull $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$IMAGE_REPO_NAME:latest
docker run -d -p 80:8080 047719635525.dkr.ecr.ap-south-1.amazonaws.com/web-app:latest
