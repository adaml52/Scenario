#!/bin/bash

# Create AWS security groups for scenario

aws ec2 create-security-group --group-name mysecgroup --description “Security group for instances”

# Creating key pair for scenario

aws ec2 create-key-pair --us-west-2 –key-name scenariokey --query “KeyMaterial” --output text scenario.ppk

# Create the three required instances

aws ec2 run-instances --image-id ami-223f945a --count 3 --instance-type t2.micro --key-name scenariokey --security-group-ids mysecgroup

# Expose port 80, 22, 443 and 8140 for HTTP, SSH, HTTPS and Puppet services

aws ec2 authorize-security-group-ingress --group-id sg-57f0ae2b --protocol tcp --port 80 --port 22 --port 443 --port 8140 --cidr 0.0.0.0/0
