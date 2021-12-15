#!/bin/bash 

echo "Installing SSH Private key"
aws ssm get-parameter --name private_ssh_key --with-decryption --region us-west-2 | jq -r '.[].Value' | base64 -d > /tmp/id_rsa
cp /tmp/id_rsa /home/ec2-user/.ssh/

echo "Installing SSH Public key"
aws ssm get-parameter --name public_ssh_key --with-decryption --region us-west-2 | jq -r '.[].Value' > /tmp/id_rsa.pub
cp /tmp/id_rsa.pub /home/ec2-user/.ssh/
