#!/bin/bash
item=$1
sudo ./deleteRPZItem.py $item
if [ $? == 1 ]
then
	echo "Error don't hava the domain"
	exit 1
else
	echo "success"
fi
sudo service bind9 restart