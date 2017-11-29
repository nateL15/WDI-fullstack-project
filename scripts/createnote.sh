curl --include --request POST "http://localhost:4741/notes" \
  --header "Content-Type: application/json" \
  --data '{
      "note": {
        "text": "'"${TEXT}"'",
      }
  }'
