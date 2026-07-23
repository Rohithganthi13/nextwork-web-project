#!/bin/bash
set -x
set -e
set -o pipefail


docker stop web-app || true
docker rm web-app || true