#!/bin/bash

# Usage:
## Without user_pool_id (will read from amplify_outputs.json)
## ./create-user.sh user@example.com Password123!
## With explicit user_pool_id
## ./create-user.sh user@example.com Password123! us-east-1_xxxxxxxxx

if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
    echo "Usage: $0 <username> <password> [user_pool_id]"
    exit 1
fi

user_name="$1"
password="$2"
user_pool_id="$3"

if [ -z "$user_pool_id" ]; then
    # Try to read user_pool_id from amplify_outputs.json in parent directory
    if [ -f "amplify_outputs.json" ]; then
        user_pool_id=$(jq -r '.auth.user_pool_id' amplify_outputs.json)
        if [ -z "$user_pool_id" ]; then
            echo "Error: Could not find user_pool_id in ../amplify_outputs.json"
            exit 1
        fi
    else
        echo "Error: No user_pool_id provided and ../amplify_outputs.json not found"
        exit 1
    fi
fi

aws cognito-idp admin-create-user \
  --user-pool-id $user_pool_id \
  --username $user_name \
  --temporary-password $password \
  --message-action SUPPRESS \
  --no-cli-pager

aws cognito-idp admin-set-user-password \
  --user-pool-id $user_pool_id \
  --username $user_name \
  --password $password \
  --permanent \
  --no-cli-pager

echo "User with username $user_name created in user pool $user_pool_id"