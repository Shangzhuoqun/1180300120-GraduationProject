#!/bin/bash
wrongDomain=$1
item=$1"\tIN\tCNAME\t*.correct."
echo -e $item | sudo tee -a /etc/bind/db.rpz.local
sudo service bind9 restart