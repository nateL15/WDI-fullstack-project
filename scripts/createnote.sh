curl --include --request POST "http://localhost:4741/note" \
  --header "Content-Type: application/json" \
  --data '{
      "note": {
        "text": "'"${TEXT}"'",
      }
  }'
