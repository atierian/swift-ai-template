#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <api_id>"
    exit 1
fi

api_id="$1"

# Create generated-graphql directory if it doesn't exist
mkdir -p generated-graphql

aws appsync get-introspection-schema \
  --api-id $api_id \
  --format SDL \
  generated-graphql/schema.graphqls
