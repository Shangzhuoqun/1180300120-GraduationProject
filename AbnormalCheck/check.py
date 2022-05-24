import subprocess
import json
import logging
import os
import sched
import time

PREFIX = os.path.dirname(os.path.abspath(__file__))
waitingCheckDataPath = None
mergedDataPath = None
logpath = None
fronttimes = None
period = None
DataPath = None
DataBakPath = None
latestCredibleRecordsPath = None
ianahttpspidercommand = None
rootspidercommand = None
tldspidercommand = None
mergedatacommand = None
response_method = None

recordList = []
tldMap = {}
tldQueue = {}

class Record():
    def __init__(self, line):
        line = line.strip(" \n")
        temp = line.split()
        self._domain = temp[0]
        self._ttl = temp[1]
        self._class = temp[2]
        self._type = temp[3]
        self._rrdata = temp[4]
    def __eq__(self, o: object):
        if(self.__dict__.get("_domain") == o.__dict__.get("_domain") and self.__dict__.get("_class") == o.__dict__.get("_class") and self.__dict__.get("_type") == o.__dict__.get("_type") and self.__dict__.get("_rrdata") == o.__dict__.get("_rrdata")):
            return True
        else:
            return False
    def tostring(self):
        return '{}\t{}\t{}\t{}\t{}'.format(self._domain, self._ttl, self._class, self._type, self._rrdata)

class Queue():
    def __init__(self, size = 1):
        self.queue = []
        self.tag = []
        self.size = size

    def isintersect(self, a, b):
        for i in a:
            if(i._type.lower() in ['a', 'aaaa'] and i in b):
                return True
        return False
    
    def isequal(self, a, b):
        if(len(a) != len(b)):
            return False
        for i in a:
            if(i not in b):
                return False
        return True

    def push(self, record):
        if(len(self.queue) == 0):
            for i in range(self.size):
                self.queue.append(record)
                self.tag.append(-1)
            return True
        else:
            pos = self.size - 1
            islegal = False
            while(pos != -1):
                temprecord = self.queue[pos]
                if(not self.isintersect(temprecord, record)):
                    pos = self.tag[pos]
                else:
                    islegal = True
                    break
            if(not islegal):
                return False
            else:
                newtag = -1
                if(self.isequal(self.queue[self.size - 1], record)):
                    newtag = self.tag[self.size - 1]
                else:
                    newtag = self.size - 1
                self.queue.append(record)
                self.tag.append(newtag)

                for i in range(self.size + 1):
                    self.tag[i] = max(-1, self.tag[i] - 1)
                self.queue = self.queue[1:]
                self.tag = self.tag[1:]
                return True
        
    def getqueue(self):
        return self.queue
    def gettag(self):
        return self.tag



def readConf():
    global waitingCheckDataPath
    global mergedDataPath
    global logpath
    global fronttimes
    global period
    global DataPath
    global DataBakPath
    global latestCredibleRecordsPath
    global ianahttpspidercommand
    global rootspidercommand
    global tldspidercommand
    global mergedatacommand
    global response_method
    check_info = json.load(open('./Configuration.in', 'r'))['check']
    if(check_info == None):
        print('Please check Configuration.in')
        exit(1)
    waitingCheckDataPath = str(check_info['waitingCheckDataPath'])
    mergedDataPath = str(check_info['mergedDataPath'])
    logpath = str(check_info['logpath'])
    fronttimes = int(str(check_info['fronttimes']))
    period = int(str(check_info['period']))
    DataPath = str(check_info['DataPath'])
    DataBakPath = str(check_info['DataBakPath'])
    latestCredibleRecordsPath = str(check_info['latestCredibleRecordsPath'])
    ianahttpspidercommand = str(check_info['ianahttpspidercommand'])
    rootspidercommand = str(check_info['rootspidercommand'])
    tldspidercommand = str(check_info['tldspidercommand'])
    mergedatacommand = str(check_info['mergedatacommand'])
    response_method = str(check_info['response_method'])
    if(response_method not in ['RPZ', 'InterceptReply', 'ModifyBINDCache']):
        response_method = 'ModifyBINDCache'
    # init logging mode
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                        datefmt='%a, %d %m %Y %H:%M:%S',
                        filename="%s/run.log" % logpath,
                        filemode='a')
    logging.info(
        "############################ A New restart ############################")

def getwaitingCheckData():
    f = open('../' + mergedDataPath + '/mergeddata', 'r')
    lines = f.readlines()
    f.close()
    f = open(PREFIX + '/' + waitingCheckDataPath + '/data', 'w')
    f.writelines(lines)
    f.close()
    global recordList
    recordList = []
    for line in lines:
        try:
            recordList.append(Record(line))
        except:
            logging.error("wrong record : {}".format(line))


def classify():
    global tldMap
    tldMap = {}
    name_tld = {}
    for record in recordList:
        if(record._type.upper() == "NS"):
            tldMap[record._domain] = []
            if(record._rrdata not in name_tld.keys()):
                name_tld[record._rrdata] = []
            name_tld[record._rrdata].append(record._domain)
    for record in recordList:
        if(record._type.upper() == "NS"):
            tldMap[record._domain].append(record)
        elif(record._type.upper() in ["A", "AAAA"]):
            try:
                for tld in name_tld[record._domain]:
                    tldMap[tld].append(record)
            except:
                logging.error('no NS record matches the record : {}'.format(record.tostring()))

def check():
    global response_method
    abnormaltld = []
    normaltld = []
    for tld in tldMap.keys():
        if(tld not in tldQueue.keys()):
            tldQueue[tld] = Queue(size = fronttimes)
        if(not tldQueue[tld].push(tldMap[tld])):
            abnormaltld.append(tld)
        else:
            temp_tld = tld
            temp_tld = temp_tld.strip('.')
            f = open(PREFIX + '/' + latestCredibleRecordsPath + '/latest-' + temp_tld, 'w')
            for record in tldMap[tld]:
                f.write(record.tostring() + '\n')
            f.close()
            normaltld.append(tld)
    logging.info('normal tlds is :\n{}'.format(normaltld))
    logging.error('abnormal tld is :\n{}'.format(abnormaltld))
    outputAbnormalTLD(abnormaltld)

    cmd = ''
    if(response_method == 'RPZ'):
        cmd = 'sudo python ../RPZ/response.py'
    elif(response_method == 'InterceptReply'):
        sub = subprocess.Popen('sudo python3 ./kill.py', shell = True, stdout = subprocess.PIPE)
        sub.wait()
        cmd = 'nohup sudo python3 ../InterceptReply/response.py &'
    else:
        cmd = 'sudo python ../ModifyBINDCache/response.py'
    subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    logging.info("response with {}".format(response_method))


def outputAbnormalTLD(abnnormalTLDList):
    curtime = time.strftime("%FT%TZ").replace(':', '').replace('-', '')
    f = open(PREFIX + '/' + DataBakPath + '/abnormalTLD-' + curtime, "w")
    for tld in abnnormalTLDList:
        f.write(tld + '\n')
    f.close()
    
    f = open(PREFIX + '/' + DataPath + '/abnormalTLD', "w")
    for tld in abnnormalTLDList:
        f.write(tld + '\n')
    f.close()


def perform_command(schedule, delay_s):
    schedule.enter(delay_s, 0, perform_command, (schedule, delay_s))
    print('ianaspider start')
    os.system(ianahttpspidercommand)
    print("ianaspider finish")
    print('rootspider start')
    os.system(rootspidercommand)
    print("rootspider finish")
    print('tldspider start')
    os.system(tldspidercommand)
    print("tldspider finish")
    print("mergedata start")
    os.system(mergedatacommand)
    print("mergedata finish")
    getwaitingCheckData()
    classify()
    check()
    print("one time check finish")
    logging.info("one time check finish")


def timing_exe(delay=14400):
    delay = period
    schedule = sched.scheduler(time.time, time.sleep)
    schedule.enter(0, 0, perform_command, (schedule, delay))
    schedule.run()

if __name__ == '__main__':
    os.chdir(PREFIX)
    readConf()
    timing_exe()