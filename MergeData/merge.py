import functools
import json
import os
import logging

PREFIX = os.path.dirname(os.path.abspath(__file__))
waitingmergedatapath = None
waitingmergefilespathlist = None
timeoutTLDPath = None
mergeddata = None
logpath = None
waitingmergefileslist = []
masterfilename = 'iana'
masterfilelines = None
name_tld = {}

timeoutTLDSet = set()
abnormalTLDSet = set()
notgetTLDSet = set()
moregetTLDSet = set()


def formatipv6record(record):
    a = record.split()[4]
    temp_a = a.split(':')
    if(temp_a[-1] == ''):
        temp_a = temp_a[0:-1]
    a_list = []
    for i in range(len(temp_a)):
        if(temp_a[i] == ''):
            for j in range(9 - len(temp_a)):
                a_list.append('0')
        else:
            a_list.append(temp_a[i])
    res_a = ':'.join(a_list)
    res_list = record.split()
    res_list[4] = res_a
    res = '\t'.join(res_list)
    res += '\n'
    return res


def equal(a, b):
    return a.split()[0].lower() == b.split()[0].lower() and a.split()[3].lower() == b.split()[3].lower() and a.split()[4].lower() == b.split()[4].lower()

def cmp(a, b):
    if(a.split()[0].lower() == b.split()[0].lower()):
        if(a.split()[4].lower() < b.split()[4].lower()):
            return -1
        else:
            return 1
    else:
        if(a.split()[0].lower() < b.split()[0].lower()):
            return -1
        elif(a.split()[0].lower() > b.split()[0].lower()):
            return 1

def unique(lines):
    reslist = []
    for i in range(len(lines)):
        if(i > 0 and equal(lines[i].lower(), lines[i - 1].lower())):
            continue
        reslist.append(lines[i])
    return reslist

def readConf():
    global PREFIX
    global waitingmergefilespathlist
    global waitingmergedatapath
    global timeoutTLDPath
    global mergeddata
    global logpath
    PREFIX = os.getcwd()
    merge = json.load(open('./Configuration.in', 'r'))['merge']
    waitingmergefilespathlist = merge['waitingmergefilespathlist']
    waitingmergedatapath = str(merge['waitingmergedatapath'])
    timeoutTLDPath = str(merge['timeoutTLDPath'])
    mergeddata = str(merge['mergeddata'])
    logpath = str(merge['logpath'])
    #init logging mode
    logging.basicConfig(level = logging.DEBUG,\
                    format = '%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',\
                    datefmt = '%a, %d %m %Y %H:%M:%S',\
                    filename = "%s/run.log" % logpath,\
                    filemode = 'a')
    logging.info("############################ A New restart ############################")

def loadfilenames():
    for path in waitingmergefilespathlist:
        for filename in os.listdir('../' + path):
            waitingmergefileslist.append('../' + path + '/' + filename)

def loadTimeoutTLD():
    global timeoutTLDSet
    f = open('../' + timeoutTLDPath + '/TimeoutTLD-rootspider', 'r')
    lines = f.readlines()
    f.close()
    for line in lines:
        line = line.strip(' \n')
        timeoutTLDSet.add(line)
    msg = str(timeoutTLDSet)
    logging.info("timeout tlds which get from rootspider are following :\n{}".format(msg))


def copywaitingmergefiles():
    global waitingmergefileslist
    for file in waitingmergefileslist:
        f = open(file, 'r')
        lines = f.readlines()
        f.close()
        f = open(PREFIX + '/' + waitingmergedatapath + '/' + file.split('/')[-1], 'w')
        # f.writelines(lines)
        for i in range(len(lines)):
            if('aaaa' in lines[i]):
                f.write(formatipv6record(lines[i]))
            else:
                f.write(lines[i])
        f.close()
    waitingmergefileslist = os.listdir(PREFIX + '/' + waitingmergedatapath)

def loadmasterfile():
    global masterfilelines
    f = open(PREFIX + '/' + waitingmergedatapath + '/' + masterfilename, 'r')
    masterfilelines = f.readlines()
    f.close()

    for i in range(len(masterfilelines)):
        if(masterfilelines[i].split()[3].lower() == 'ns'):
            temp_name = masterfilelines[i].split()[4].lower()
            temp_tld = masterfilelines[i].split()[0].lower()
            if(temp_name in name_tld.keys()):
                name_tld[temp_name].append(temp_tld)
            else:
                name_tld[temp_name] = []
                name_tld[temp_name].append(temp_tld)

    masterfilelines.sort(key=functools.cmp_to_key(lambda x, y : cmp(x, y)))
    masterfilelines = unique(masterfilelines)

def comparefiles():
    # reslines = []
    for i in waitingmergefileslist:
        if i == "iana":
            continue
        f = open(PREFIX + '/' + waitingmergedatapath + '/' + i, 'r')
        lines = f.readlines()
        f.close()
        lines.sort(key=functools.cmp_to_key(lambda x, y : cmp(x, y)))
        lines = unique(lines)
        ptriana = 0
        ptrother = 0
        while(ptriana < len(masterfilelines) and ptrother < len(lines)):
            if(equal(masterfilelines[ptriana], lines[ptrother])):
                ptriana += 1
                ptrother += 1
                continue
            if(masterfilelines[ptriana].split()[0].lower() == lines[ptrother].split()[0].lower() and masterfilelines[ptriana].split()[3].lower() == lines[ptrother].split()[3].lower() and masterfilelines[ptriana].split()[3].lower() in ['a', 'aaaa']):
                logging.error('iana record and {} record is different : \niana record :\n{}{} records :\n{}'.format(i, masterfilelines[ptriana], i, lines[ptrother]))
                if(masterfilelines[ptriana].split()[3].lower() == 'ns'):
                    abnormalTLDSet.add(masterfilelines[ptriana].split()[0].lower())
                else:
                    if(masterfilelines[ptriana].split()[0].lower() in name_tld):
                        for i in name_tld[masterfilelines[ptriana].split()[0].lower()]:
                            abnormalTLDSet.add(i)
                    else:
                        logging.error('no tld match authoritative server name : {}'.format(masterfilelines[ptriana].split()[0].lower()))
                ptrother += 1
                ptriana += 1
                continue
            if(cmp(masterfilelines[ptriana].lower(), lines[ptrother].lower()) < 0):
                logging.error('{} don\'t have iana\'s record :\n{}'.format(i, masterfilelines[ptriana]))
                if(masterfilelines[ptriana].split()[3].lower() == 'ns'):
                    notgetTLDSet.add(masterfilelines[ptriana].split()[0].lower())
                else:
                    if(masterfilelines[ptriana].split()[0].lower() in name_tld):
                        for i in name_tld[masterfilelines[ptriana].split()[0].lower()]:
                            notgetTLDSet.add(i)
                    else:
                        logging.error('no tld match authoritative server name : {}'.format(masterfilelines[ptriana].split()[0].lower()))
                ptriana += 1
                continue
            if(cmp(masterfilelines[ptriana].lower(), lines[ptrother].lower()) > 0):
                logging.error('{} have record which not in iana\'s records :\n{}'.format(i, lines[ptrother]))
                # abnormalTLDSet.add(lines[ptrother].split()[0].lower())
                if(lines[ptrother].split()[3].lower() == 'ns'):
                    moregetTLDSet.add(lines[ptrother].split()[0].lower())
                else:
                    if(lines[ptrother].split()[0].lower() in name_tld):
                        for i in name_tld[lines[ptrother].split()[0].lower()]:
                            moregetTLDSet.add(i)
                    else:
                        logging.error('no tld match authoritative server name : {}'.format(lines[ptrother].split()[0].lower()))
                ptrother += 1
                continue

def mergeresult():
    f = open(PREFIX + '/' + waitingmergedatapath + '/' + masterfilename, 'r')
    lines = f.readlines()
    f.close()
    normal_set = set()
    for i in range(len(lines)):
        if(lines[i].split()[3].lower() == 'ns' and lines[i].split()[0].lower() not in abnormalTLDSet):
            normal_set.add(lines[i].split()[0].lower())
            normal_set.add(lines[i].split()[4].lower())
    f = open(PREFIX + '/' + mergeddata + '/mergeddata', 'w')
    for i in range(len(lines)):
        if(lines[i].split()[3].lower() in ['ns', 'a'] and lines[i].split()[0].lower() in normal_set):
            f.write(lines[i].lower())
        elif(lines[i].split()[3].lower() in ['aaaa'] and lines[i].split()[0].lower() in normal_set):
            f.write(formatipv6record(lines[i]).lower())
    f.close()

def outputAbnormalTLD():
    f = open(PREFIX + '/' + mergeddata + '/abnormalTLD', 'w')
    for i in abnormalTLDSet:
        f.write('{}\n'.format(i))
    f.close()

def outputNotGetTLD():
    f = open(PREFIX + '/' + mergeddata + '/notGetTLD', 'w')
    for i in notgetTLDSet:
        f.write('{}\n'.format(i))
    f.close()

def outputMoreGetTLD():
    f = open(PREFIX + '/' + mergeddata + '/moreGetTLD', 'w')
    for i in moregetTLDSet:
        f.write('{}\n'.format(i))
    f.close()





if __name__ == '__main__':
    os.chdir(PREFIX)
    readConf()
    loadTimeoutTLD()
    loadfilenames()
    copywaitingmergefiles()
    loadmasterfile()
    comparefiles()
    mergeresult()
    outputAbnormalTLD()
    outputNotGetTLD()
    outputMoreGetTLD()