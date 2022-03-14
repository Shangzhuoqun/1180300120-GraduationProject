#!/usr/bin/python
# -*- coding: UTF-8 -*-
import re
import sys
item = sys.argv[1]
f = open('/etc/bind/db.rpz.local', 'r')
lines = f.readlines()
f.close()
s = ''
for line in lines:
	s += line

if(item == 'ALL'):
	pattern = re.compile(r'([\s\S]*; domains\n)([\s\S]*)')
	res = re.match(pattern, s)
	lines = res.group(1)
else:
	item = item + '\tIN\tCNAME\t\*.correct.\n'
	pattern = re.compile(r'([\s\S]*)(' + item + ')([\s\S]*)')
	res = re.match(pattern, s)
	if(res):
		lines = res.group(1) + res.group(3)
	else:
		exit(1)
f = open('/etc/bind/db.rpz.local', 'w')
f.write(lines)
f.close()
exit(0)