#!/bin/bash 

echo "Installing SSH Private key"
aws ssm get-parameter --name private_ssh_key --with-decryption --region us-west-2 | jq -r '.[].Value' | base64 -d > ~/.ssh/id_rsa
