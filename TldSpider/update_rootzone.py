import requests
import os

os.chdir(os.path.dirname(__file__))
res = requests.get('https://www.internic.net/domain/root.zone')

f = open('./root.zone.new', 'w')
f.write(res.text)
f.close()