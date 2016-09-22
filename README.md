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

TODO: write a bash script (pref multi-threaded) to make it easier on people