import subprocess
import logging
import os
import json

PREFIX = os.path.dirname(os.path.abspath(__file__))
bindPath = None
logPath = None
dataPath = None
restartCommand = None
startCommand = None
stopCommand = None
abnormalTLDFileList = None
customizeRecordsPath = None

abnormalTLD = set()
trustedRecords = []

response_tld = set()
not_response_tld = set()


def readConf():
    global bindPath
    global logPath
    global dataPath
    global restartCommand
    global startCommand
    global stopCommand
    global abnormalTLDFileList
    global customizeRecordsPath
    rpz = json.load(open('./Configuration.in', 'r'))['rpz']
    if(rpz == None):
        print('Please check Configuration.in')
        exit(1)
    bindPath = str(rpz['bindPath'])
    logPath = str(rpz['logPath'])
    dataPath = str(rpz['dataPath'])
    restartCommand = str(rpz['restartCommand'])
    startCommand = str(rpz['startCommand'])
    stopCommand = str(rpz['stopCommand'])
    abnormalTLDFileList = rpz['abnormalTLDFileList']
    customizeRecordsPath = str(rpz['customizeRecordsPath'])

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

def getTrustedRecords():
    global trustedRecords
    global response_tld
    global not_response_tld
    customize_tld = os.listdir(PREFIX + '/' + customizeRecordsPath)
    for tld in abnormalTLD:
        temp_tld = tld
        temp_tld.strip('.')
        if(temp_tld in customize_tld):
            response_tld.add(temp_tld)
        else:
            not_response_tld.add(temp_tld)
    
    for tld in response_tld:
        for file in os.listdir(PREFIX + '/' + customizeRecordsPath + '/' + tld):
            f = open(PREFIX + '/' + customizeRecordsPath + '/' + tld + '/' + file)
            lines = f.readlines()
            f.close()
            trustedRecords.extend(lines)

    f = open(PREFIX + '/' + dataPath + '/trustedRecords', 'w')
    for record in trustedRecords:
        f.write(record.strip('\n') + '\n')
    f.close()

def response_with_rpz():
    global response_tld
    global not_response_tld
    for tld in response_tld:
        cmd = 'sudo ./shell/configRPZ.sh ' + tld
        sub = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
        sub.wait()
    print("need to inform the rpz server to add trusted records")
    logging.info("have responed with rpz tlds are :\n{}".format(response_tld))
    logging.warning("haven't responed with rpz tlds are :\n{}".format(not_response_tld))

if __name__ == "__main__":
    os.chdir(PREFIX)
    readConf()
    getAbnormalTLD()
    getTrustedRecords()
    response_with_rpz()