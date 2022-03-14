#!/usr/bin/python
# -*- coding: UTF-8 -*-
import re
f = open('/etc/bind/named.conf.options', 'r')
lines = f.readlines()
f.close()
s = ''
for line in lines:
        s += line
# print(s)
pattern = re.compile(r'(options[\s\S]*{[\s\S]*)(response-policy[\s\S]*{[\s\S]*};)([\s\S]*};)')
res = re.match(pattern, s)
if(res):
        lines = res.group(1) + 'response-policy {\n\t\tzone \"rpz.local\";\n\t};\n' + res.group(3)
else:
        pattern = re.compile(r'([\s\S]*)(};)')
        res = re.match(pattern, s)
        lines = res.group(1) + '\tresponse-policy {\n\t\tzone \"rpz.local\";\n\t};\n' + res.group(2)
f = open('./produceNamedConfOptions', 'w')
f.write(lines)
f.close()