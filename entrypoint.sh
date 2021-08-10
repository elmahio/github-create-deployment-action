#!/bin/sh -l

## upload

curl --location --request POST "https://api.elmah.io//v3/deployments?api_key=$1" \
--header 'Content-Type: application/json' \
--data-raw '{
    "version": "$2",
    "description": "$3",
    "userName": "$4",
    "userEmail": "$5",
    "logId": "$6"
}'