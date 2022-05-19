import subprocess
import logging
import os
import json

PREFIX = os.path.dirname(os.path.abspath(__file__))
bindPath = None
cachePath = None
cacheFile = None
logPath = None
dataPath = None
restartCommand = None
startCommand = None
stopCommand = None
abnormalTLDFileList = None
customizeRecordsPath = None
latestCredibleRecordsPath = None

abnormalTLD = set()
customizeTLD = set()
not_customizedTLD = set()
trustedRecords = []

def readConf():
    global bindPath
    global cachePath
    global cacheFile
    global logPath
    global dataPath
    global restartCommand
    global startCommand
    global stopCommand
    global abnormalTLDFileList
    global customizeRecordsPath
    global latestCredibleRecordsPath
    modifybindcache = json.load(open('./Configuration.in', 'r'))['modify-bind-cache']
    if(modifybindcache == None):
        print('Please check Configuration.in')
        exit(1)
    bindPath = str(modifybindcache['bindPath'])
    cachePath = str(modifybindcache['cachePath'])
    cacheFile = str(modifybindcache['cacheFile'])
    logPath = str(modifybindcache['logPath'])
    dataPath = str(modifybindcache['dataPath'])
    restartCommand = str(modifybindcache['restartCommand'])
    startCommand = str(modifybindcache['startCommand'])
    stopCommand = str(modifybindcache['stopCommand'])
    abnormalTLDFileList = modifybindcache['abnormalTLDFileList']
    customizeRecordsPath = str(modifybindcache['customizeRecordsPath'])
    latestCredibleRecordsPath = str(modifybindcache['latestCredibleRecordsPath'])

    # init logging mode
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                        datefmt='%a, %d %m %Y %H:%M:%S',
                        filename="%s/run.log" % logPath,
                        filemode='a')
    logging.info(
        "############################ A New restart ############################")

def getAbnormalTLD():
    global abnormalTLD
    for file in abnormalTLDFileList:
        f = open('../' + file, 'r')
        lines = f.readlines()
        f.close()
        for tld in lines:
            tld.strip('\n')
            abnormalTLD.add(tld)
    
    f = open(PREFIX + '/' + dataPath + '/abnormalTLD', 'w')
    for tld in abnormalTLD:
        temp_tld = tld
        temp_tld.strip('.')
        f.write(temp_tld + '\n')
    f.close()

def getCustomizeTLD():
    global customizeTLD
    for tld in os.listdir(PREFIX + '/' + customizeRecordsPath):
        customizeTLD.add(tld[10:])

def getTrustedRecords():
    global trustedRecords
    global not_customizedTLD
    global customizeTLD
    for tld in abnormalTLD:
        temp_tld = tld
        temp_tld.strip('.')
        if(temp_tld in customizeTLD):
            f = open(PREFIX + '/' + customizeRecordsPath + '/customize-' + temp_tld, 'r')
            lines = f.readlines()
            f.close()
            for line in lines:
                trustedRecords.append(line)
        else:
            not_customizedTLD.add(temp_tld)
            f = open('../' + latestCredibleRecordsPath + '/latest-' + temp_tld, 'r')
            lines = f.readlines()
            f.close()
            for line in lines:
                trustedRecords.append(line)
    f = open(PREFIX + '/' + dataPath + '/trustedRecords', 'w')
    for record in trustedRecords:
        f.write(record.strip('\n') + '\n')
    f.close()

def modifyCache():
    global not_customizedTLD
    global customizeTLD
    sub = subprocess.Popen(stopCommand, shell=True, stdout=subprocess.PIPE)
    sub.wait()
    if(os.path.exists(cachePath + '/' + cacheFile)):
        cmd = 'sudo mv {}/{} {}/{}.bak'.format(cachePath, cacheFile, cachePath, cacheFile)
        sub = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
        sub.wait()
    f = open(cachePath + '/' + cacheFile, 'w')
    for record in trustedRecords:
        f.write(record + '\n')
    f.close()
    sub = subprocess.Popen(startCommand, shell=True, stdout=subprocess.PIPE)
    sub.wait()
    logging.info("have responsed with customizeRecords tlds are :\n{}".format(customizeTLD))
    logging.infor("have responsed with latestCredibleRecords tlds are :\n{}".format(not_customizedTLD))

if __name__ == "__main__":
    os.chdir(PREFIX)
    readConf()
    getAbnormalTLD()
    getCustomizeTLD()
    getTrustedRecords()
    modifyCache()