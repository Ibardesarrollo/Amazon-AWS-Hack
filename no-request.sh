#!/bin/bash
red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"
echo "";

echo -ne "						$green ::Amazon Region List ::$off " ;
echo "";
echo "					eu-west-1 	   	- EU (Ireland)"
echo "					us-west-1 	        - US West (N. California)"
echo "					Northern California 	- S3 Main Server"
echo "					ap-southeast-1 		- Asia Pacific (Singapore)"
echo "					ap-northeast-1		- Asia Pacific (Tokyo)"
echo "					us-east-1 		- US East (N. Virginia)"
echo "				        us-east-2 		- US East (Ohio)"
echo "					us-west-1 		- US West (N. California)"
echo "					us-west-2 		- US West (Oregon)"
echo "					ca-central-1 		- Canada (Central)"
echo "					eu-central-1		- EU (Frankfurt)"
echo "					eu-west-1	        - EU (Ireland)"
echo "					eu-west-2 	        - EU (London)"
echo "				        eu-west-3 	        - EU (Paris)"
echo "				        eu-north-1	        - EU (Stockholm)"
echo "					ap-east-1 	        - Asia Pacific (Hong Kong)"
echo "					ap-northeast-1		- Asia Pacific (Tokyo)"
echo "					ap-northeast-2          - Asia Pacific (Seoul)"
echo "					ap-northeast-3 		- Asia Pacific (Osaka-Local)"
echo "					ap-southeast-1 		- Asia Pacific (Singapore)"
echo "					ap-southeast-2 		- Asia Pacific (Sydney)"
echo "					ap-south-1 		- Asia Pacific (Mumbai)"
echo "					me-south-1 		- Middle East (Bahrain)"
echo "					sa-east-1	        - South America (São Paulo)"

echo -ne "$red [$green+$red] Enter Bucket Name:$off: " ;
read Bucket
echo -ne "$red [$green+$red] Enter Region Name:$off: " ;
read Region
aws s3 ls s3://$Bucket --no-sign-request --region $Region