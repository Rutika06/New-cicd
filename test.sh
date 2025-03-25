#!/bin/bash

echo "Running integration test..."

URL="http://localhost:8080"

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ "$STATUS_CODE" -eq 200 ]; then
  echo "✅ Test Passed! Status Code: $STATUS_CODE"
  exit 0
else
  echo "❌ Test Failed! Status Code: $STATUS_CODE"
  exit 1
fi
