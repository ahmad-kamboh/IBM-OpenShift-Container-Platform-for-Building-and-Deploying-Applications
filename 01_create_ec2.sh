#!/bin/bash

aws ec2 run-instances \
  --image-id ami-0c02fb55956c7d316 \
  --count 1 \
  --instance-type t2.micro \
  --key-name your-key-name \
  --security-groups your-security-group \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Grafana-Loki-Instance}]' \
  --region us-east-1
