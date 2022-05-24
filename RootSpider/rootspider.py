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
TimeoutTLDPath = None
Period = None
ServerList = None
NeedtoMultiThread = None
NumofThread = None
localIP = '127.0.0.1'

timeoutTLDSet = set()


def toLowerCase(records):
    for record in records:
        record = record.lower()
    return records


def readConf():
    global DataPath
    global DataBakPath
    global CurFilePath
    global LogPath
    global TimeoutTLDPath
    global Period
    global ServerList
    global NeedtoMultiThread
    global NumofThread
    root_spider = json.load(open('./Configuration.in', 'r'))['root-spider']
    if(root_spider == None):
        print('Please check Configuration.in')
        exit(1)
    DataPath = str(root_spider['DataPath'])
    DataBakPath = str(root_spider['DataBakPath'])
    CurFilePath = str(root_spider['CurFilePath'])
    LogPath = str(root_spider['LogPath'])
    TimeoutTLDPath = str(root_spider['TimeoutTLDPath'])
    Period = float(str(root_spider['Period']))
    ServerList = root_spider['ServerList']
    NeedtoMultiThread = root_spider['NeedtoMultiThread']
    NumofThread = int(str(root_spider['NumofThread']))
    try:
        getlocalIP()
    except:
        pass
    # init logging mode
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                        datefmt='%a, %d %m %Y %H:%M:%S',
                        filename="%s/run.log" % LogPath,
                        filemode='a')
    logging.info(
        "############################ A New restart ############################")


def getlocalIP():
    global localIP
    cmd = "curl ipinfo.io/ip"
    sub = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
    sub.wait()
    res = sub.stdout.readlines()
    localIP = str(res[0]).strip('b\'')


def outputFileHead(time, server, status):
    head = '; timestamp: {}\n; source id: {}\n; source locator: {}\n; source IP address: {}\n; backup point IP address: {}\n; status: {}\n'.format(
        time, server['source_id'], server['source_locator'], server['source_ip'], localIP, status)
    return head


def update():
    os.system("sudo python3 ./update_rootzone.py")


def spider():
    QueryList = []
    f = open("./root.zone.new")
    lines = f.readlines()
    for line in lines:
        if line.strip().split()[0].lower() in QueryList:
            continue
        if line.strip().split()[3] == "NS":
            QueryList.append(line.strip().split()[0].lower())
    f.close()

    print("total item is {}".format(len(QueryList)))

    def queryfromList(server, qList, begin, resList):
        for i in range(len(qList[:])):
            print("current item is {}, server is {}".format(
                begin + i, server['source_locator']))

            res = fetch(server['source_ip'], qList[i], 'NS')
            if(res[0] != "ERROR"):
                resList.extend(res[1:])

    for server_id in ServerList.keys():
        if(ServerList[server_id]['source_id'][-1] in NeedtoMultiThread):
            print('multithreading ... {}'.format(
                ServerList[server_id]['source_id']))
            curTime = time.strftime("%FT%TZ").replace(':', '').replace('-', '')
            outFileName = curTime + '-' + ServerList[server_id]['source_id']
            tot = len(QueryList)
            onetot = int((tot + NumofThread - 1) / NumofThread)
            queryListList = []
            resListList = []
            for i in range(NumofThread):
                resListList.append([])
                if(i == NumofThread - 1):
                    queryListList.append(QueryList[i*onetot:])
                    continue
                queryListList.append(QueryList[i*onetot:(i+1)*onetot])
            thdList = []
            for i in range(NumofThread):
                tempThd = threading.Thread(target=queryfromList, args=(
                    ServerList[server_id], queryListList[i], i*onetot, resListList[i], ))
                thdList.append(tempThd)
            for i in range(NumofThread):
                thdList[i].start()
            for i in range(NumofThread):
                thdList[i].join()

            resList = []
            for i in range(NumofThread):
                resList.extend(resListList[i])

            f = open(PREFIX + '/' + DataBakPath + '/' + outFileName, 'a')
            if(len(resList) != 0):
                head = outputFileHead(
                    curTime, ServerList[server_id], 'success')
                f.write(head)
            else:
                head = outputFileHead(curTime, ServerList[server_id], 'fail')
                f.write(head)
            f.writelines(temp_line + '\n' for temp_line in resList)
            f.close()
            format(PREFIX + '/' + DataBakPath + '/' + outFileName)
            print('{} has finished'.format(
                ServerList[server_id]['source_locator']))
        else:
            print('not multithreading ... {}'.format(
                ServerList[server_id]['source_id']))
            curTime = time.strftime("%FT%TZ").replace(':', '').replace('-', '')
            outFileName = curTime + '-' + ServerList[server_id]['source_id']
            resList = []
            queryfromList(ServerList[server_id], QueryList, 0, resList)
            f = open(PREFIX + '/' + DataBakPath + '/' + outFileName, 'a')
            if(len(resList) != 0):
                head = outputFileHead(
                    curTime, ServerList[server_id], 'success')
                f.write(head)
            else:
                head = outputFileHead(curTime, ServerList[server_id], 'fail')
                f.write(head)
            f.writelines(temp_line + '\n' for temp_line in resList)
            f.close()
            format(PREFIX + '/' + DataBakPath + '/' + outFileName)
            print('{} has finished'.format(
                ServerList[server_id]['source_locator']))
    f = open(PREFIX + '/' + TimeoutTLDPath + '/' + 'TimeoutTLD-rootspider', 'w')
    for tld in timeoutTLDSet:
        f.write(tld + '\n')
    f.close()
    print('one time rootspider has finished')


def format(filename):
    f = open(filename, 'r')
    lines = f.readlines()
    f.close()
    lines = lines[6:]
    outputfilename = PREFIX + '/' + DataPath + '/' + 'root-dns-' + filename.split('-')[-1]
    f = open(outputfilename, 'w')
    for i in range(len(lines)):
        try:
            if(lines[i].split()[3].lower() in ['ns', 'a', 'aaaa']):
                f.write(lines[i].lower())
        except:
            pass
    f.close()


def fetch(serveriporname, domain, type):
    resList = []
    for i in range(5):
        resList = fetchonetime(serveriporname, domain, type)
        if(resList[0] == 'SUCCESS'):
            break
    if(resList[0] != 'SUCCESS'):
        if('timed out' in resList[1]):
            timeoutTLDSet.add(domain)
            logging.error("timed out tld : {}".format(domain))
        else:
            logging.error("other error : {}".format(resList[1]))
    return resList

def fetchonetime(serveriporname, domain, type):
    resList = ['SUCCESS']
    cmd = 'dig @{} {} {}'.format(serveriporname, domain, type)
    sub = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    sub.wait()
    digcontent = sub.stdout.readlines()

    for i in range(len(digcontent)):
        digcontent[i] = digcontent[i].decode().strip('\n')

    answerStart = -1
    answerEnd = -1
    authorityStart = -1
    authorityEnd = -1
    additionalStart = -1
    additionalEnd = -1

    for i in range(len(digcontent)):
        if('ANSWER SECTION' in digcontent[i]):
            answerStart = i + 1
        if('AUTHORITY SECTION' in digcontent[i]):
            authorityStart = i + 1
            if(answerEnd == -1):
                answerEnd = i - 1
        if('ADDITIONAL SECTION' in digcontent[i]):
            additionalStart = i + 1
            if(authorityEnd == -1):
                authorityEnd = i - 1
            if(answerEnd == -1):
                answerEnd = i - 1
        if('Query time' in digcontent[i]):
            if(answerEnd == -1):
                answerEnd = i - 1
            if(authorityEnd == -1):
                authorityEnd = i - 1
            if(additionalEnd == -1):
                additionalEnd = i - 1

    if(answerStart == -1 and authorityStart == -1 and additionalStart == -1):
        # logging.error('wrong query : \'{}\''.format(cmd))
        errormsg = cmd + '\n'
        for i in range(len(digcontent)):
            errormsg = errormsg + digcontent[i].strip('\n') + '\n'
        logging.error('wrong query {}'.format(errormsg))
        return ['ERROR', errormsg]

    if(answerStart != -1):
        resList.extend(digcontent[answerStart: answerEnd])
    if(authorityStart != -1):
        resList.extend(digcontent[authorityStart: authorityEnd])
    if(additionalStart != -1):
        resList.extend(digcontent[additionalStart: additionalEnd])

    return resList


def perform_command(schedule, delay_s):
    schedule.enter(delay_s, 0, perform_command, (schedule, delay_s))
    update()
    spider()


def timing_exe(delay=14400):
    delay = Period
    schedule = sched.scheduler(time.time, time.sleep)
    schedule.enter(0, 0, perform_command, (schedule, delay))
    schedule.run()

if __name__ == "__main__":
    os.chdir(PREFIX)
    readConf()
    # timing_exe()
    update()
    spider()