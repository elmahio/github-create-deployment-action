#!/bin/sh -l

sh -c "echo $*"

## upload

curl --location --request POST "https://api.elmah.io//v3/deployments?api_key=$1" \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data "version=$2&description=$3&logId=$6"