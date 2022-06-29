#!/bin/sh

curl -i\
  -H "Accept: application/json" \
  -H "Content-Type:application/json" \
  -X POST \
  --data "{\"content\": \"$(shuf -n 1 tips.txt)\"}" \
  "$WEBHOOK_URL"