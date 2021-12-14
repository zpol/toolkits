#!/bin/bash 

echo "Installing SSH Private key"
aws ssm get-parameter --name private_ssh_key --region us-west-2|jq -r '.[].Value' > ~/.ssh/id_rsa
