#!/bin/bash

curl --include --request PATCH "http://localhost:4741/notes/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
      "ingredient": {
        "text": "'"${TEXT}"'",
      }
  }'
