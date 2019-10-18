#!/bin/bash
red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"
echo "";
echo -ne "$red [$green+$red] Enter Bucket Name:$off: " ;
read Bucket
aws s3 ls s3://$bucket --recursive  | grep -v -E "(Bucket: |Prefix: |LastWriteTime|^$|--)" | awk 'BEGIN {total=0}{total+=$3}END{print total/1024/1024" MB"}'