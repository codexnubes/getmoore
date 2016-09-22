#!/bin/sh
# Pulls all AWS spot pricing data from every region except for China and the US Gov

aws ec2 describe-spot-price-history --region us-east-1 > us-east-1.txt &  
aws ec2 describe-spot-price-history --region us-west-1 > us-west-1.txt &  
aws ec2 describe-spot-price-history --region us-west-2 > us-west-2.txt &  
aws ec2 describe-spot-price-history --region eu-west-1 > eu-west-1.txt &  
aws ec2 describe-spot-price-history --region eu-central-1 > eu-central-1.txt &  
aws ec2 describe-spot-price-history --region ap-northeast-1 > ap-northeast-1.txt &  
aws ec2 describe-spot-price-history --region ap-northeast-2 > ap-northeast-2.txt &  
aws ec2 describe-spot-price-history --region ap-southeast-1 > ap-southeast-1.txt &  
aws ec2 describe-spot-price-history --region ap-southeast-2 > ap-southeast-2.txt &  
aws ec2 describe-spot-price-history --region sa-east-1 > sa-east-1.txt &  
wait
