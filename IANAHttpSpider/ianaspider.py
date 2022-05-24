import os
import subprocess
import time
import sched
import json
import threading
import logging

PREFIX = os.path.dirname(os.path.abspath(__file__))
DataPath = None
DataBakPath = None
CurFilePath = None
LogPath = None
Period = None
localIP = '127.0.0.1'

def toLowerCase(records):
	for record in records:
		record = record.lower()
	return records


def readConf():
	global DataPath
	global DataBakPath
	global CurFilePath
	global LogPath
	global Period
	root_spider = json.load(open('./Configuration.in', 'r'))['iana']
	if(root_spider == None):
		print('Please check Configuration.in')
		exit(1)
	DataPath = str(root_spider['DataPath'])
	DataBakPath = str(root_spider['DataBakPath'])
	CurFilePath = str(root_spider['CurFilePath'])
	LogPath = str(root_spider['LogPath'])
	Period = float(str(root_spider['Period']))
	try:
		getlocalIP()
	except:
		pass
	#init logging mode
	logging.basicConfig(level = logging.DEBUG,\
					format = '%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',\
					datefmt = '%a, %d %m %Y %H:%M:%S',\
					filename = "%s/run.log" % LogPath,\
					filemode = 'a')
	logging.info("############################ A New restart ############################")
    
def getlocalIP():
	global localIP
	cmd = "curl ipinfo.io/ip"
	sub = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
	sub.wait()
	res = sub.stdout.readlines()
	localIP =  str(res[0]).strip('b\'')


def outputFileHead(time, server, status):
    head = '; timestamp: {}\n; source id: {}\n; source locator: {}\n; source IP address: {}\n; backup point IP address: {}\n; status: {}\n'.format(time, server['source_id'], server['source_locator'], server['source_ip'], localIP, status)
    return head

def update():
    os.system("sudo python3 ./update_rootzone.py")


def spider():
    curTime = time.strftime('%FT%TZ').replace(':', '').replace('-', '')
    outfilename = curTime + '-iana'
    f = open('./root.zone.new', 'r')
    lines = f.readlines()
    f.close()
    for i in range(len(lines)):
        lines[i] = lines[i].lower()
    head = ''
    information = {'source_id': 'iana', 'source_locator': 'https://www.internic.net/domain/root.zone', 'source_ip': '192.0.46.9'}
    if(len(lines) == 0):
        head = outputFileHead(curTime, information, 'fail')
        f = open(PREFIX + '/' + DataBakPath + '/' + outfilename, 'w')
        f.write(head)
        f.close()
        logging.error('time: {}  failed to get IANA data')
    else:
        head = outputFileHead(curTime, information, 'success')
        f = open(PREFIX + '/' + DataBakPath + '/' + outfilename, 'w')
        f.write(head)
        f.writelines(lines)
        f.close()
    print('one time ianaspider has finished')
    format(PREFIX + '/' + DataBakPath + '/' + outfilename)

def format(filename):
	f = open(filename, 'r')
	lines = f.readlines()
	f.close()
	lines = lines[6:]
	outputfilename = PREFIX + '/' + DataPath + '/' + 'iana'
	f = open(outputfilename, 'w')
	for i in range(len(lines)):
		if(lines[i].split()[3].lower() in ['ns', 'a', 'aaaa']):
			f.write(lines[i].lower())
	f.close()


def perform_command(schedule,delay_s):
	schedule.enter(delay_s,0,perform_command,(schedule,delay_s))
	update()
	# t_start = time.strftime('%F %T')
	spider()
	# t_end = time.strftime('%F %T')
	# f = open('./statistic', 'a')
	# f.write('start : {}\nend : {}\n\n\n'.format(t_start, t_end))
	# f.close()

def timing_exe(delay = 14400):
	delay = Period
	schedule = sched.scheduler(time.time,time.sleep)
	schedule.enter(0,0,perform_command,(schedule,delay))
	schedule.run()

if __name__ == "__main__":
	os.chdir(PREFIX)
	readConf()
	# timing_exe()
	update()
	spider()