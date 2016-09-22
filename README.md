# getmoore  
Python library for pulling and analyzing pricing for the following cloud computing providers:  
* Amazon Web Services (AWS)

**Everything is a work in progress**

## AWS info and syntax
Dependencies: <a href="https://aws.amazon.com/cli/">AWS CLI</a> and all of its dependencies

**Get ALL historical spot instance pricing from AWS CLI (<a href="http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-spot-price-history.html">Source</a>)**  
This assumes you have a default region / availability zone set in your ~/.aws/config file. See the link above for more info

```shell
aws ec2 describe-spot-price-history 
```

Generally you also need to specify a region or availability zone, and dump the output to a text file:
```shell
aws ec2 describe-spot-price-history --region us-west-2 > us-west-2.txt
```

You can also do more complex queries, such as searching for a specific instance type during a specific time window

```shell
aws ec2 describe-spot-price-history --instance-types m1.xlarge --start-time 2014-01-06T07:08:09 --end-time 2014-01-06T08:09:10
```

Here's a bash script that gets everything and runs each pull in a separate process  
```shell
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
```