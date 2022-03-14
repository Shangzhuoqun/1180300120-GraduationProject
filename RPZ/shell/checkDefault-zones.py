#!/usr/bin/python
# -*- coding: UTF-8 -*-
f = open('/etc/bind/named.conf.default-zones', 'r')
lines = f.readlines()
f.close()
for line in lines:
	if('zone \"correct\"' in line):
		exit(1)
exit(0)