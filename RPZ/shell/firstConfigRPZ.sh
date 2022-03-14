#!/bin/bash
sudo ./checkLocal.py
if [ $? == 1 ]
then
	echo "Error should delete zone \"rpz.local\"... in /etc/bind/named.conf.local"
	exit 1
fi
sudo ./checkDefault-zones.py
if [ $? == 1 ]
then
        echo "Error should delete zone \"correct\"... in /etc/bind/named.conf.default-zones"
        exit 1
fi
sudo ./firstConfigRPZ.py
sudo mv /etc/bind/named.conf.options /etc/bind/named.conf.options.rpzbak
sudo mv ./produceNamedConfOptions /etc/bind/named.conf.options
echo -e "zone \"rpz.local\" {\n\ttype master;\n\tfile \"/etc/bind/db.rpz.local\";\n\tallow-query { any; };\n\tallow-transfer { any; };\n};\n" | sudo tee -a /etc/bind/named.conf.local
sudo cp ./rpzfile /etc/bind/db.rpz.local
echo -e "zone \"correct\" {\n\ttype forward;\n\tforwarders { $1; };\n};" | sudo tee -a /etc/bind/named.conf.default-zones
sudo service bind9 restart