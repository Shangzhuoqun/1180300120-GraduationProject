#!/usr/bin/python
# -*-coding: UTF-8 -*-
f = open('/etc/bind/named.conf.local', 'r')
lines = f.readlines()
f.close()
for line in lines:
        if('zone \"rpz.local\"' in line):
                exit(1)
exit(0)