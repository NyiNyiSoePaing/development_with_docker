#!/bin/bash

export AWS_ACCESS_KEY_ID="123"
export AWS_SECRET_ACCESS_KEY="abc"

# aws cli v1
#OUTPUT="$(aws ecr get-login --no-include-email --region ap-southeast-1)" 

# aws cli v2
#aws ecr  get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 12345.dkr.ecr.ap-southeast-1.amazonaws.com