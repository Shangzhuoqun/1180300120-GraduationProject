import functools
import os
import subprocess
import threading
import time
import sched
import json
import logging

PREFIX = os.path.dirname(os.path.abspath(__file__))
DataPath = None
DataBakPath = None
CurFilePath = None
LogPath = None
Period = None
NumofThread = None
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
    global NumofThread
    tld_spider = json.load(open('./Configuration.in', 'r'))['tld-spider']
    if(tld_spider == None):
        print('Please check Configuration.in')
        exit(1)
    DataPath = str(tld_spider['DataPath'])
    DataBakPath = str(tld_spider['DataBakPath'])
    CurFilePath = str(tld_spider['CurFilePath'])
    LogPath = str(tld_spider['LogPath'])
    Period = float(str(tld_spider['Period']))
    NumofThread = int(str(tld_spider['NumofThread']))
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
    os.system("python ./update_rootzone.py")

def spider():
    merged_data = []
    TldNameMap = {}
    name_ip = {}
    f = open("./root.zone.new")
    lines = f.readlines()
    for line in lines:
        if line.strip().split()[0] in TldNameMap.keys():
            pass
        if line.strip().split()[0].lower() in TldNameMap.keys():
            pass
        if line.strip().split()[3].upper() == "NS":
            TldNameMap[line.strip().split()[0].lower()] = []

    for line in lines:
        if line.strip().split()[3].upper() == "NS":
            TldNameMap[line.strip().split()[0].lower()].append(line.strip().split()[4].lower())
        if line.strip().split()[3].upper() == "A":
            name_ip[line.strip().split()[0].lower()] = line.strip().split()[4]

    print('total tld is {}'.format(len(TldNameMap.keys())))
    def query(thdnum, thread_tld_list, startcnt, thread_merged_data):
        cnt = 0
        for tld in thread_tld_list:
            print('thread num is {}, current is {} : {}'.format(thdnum, cnt + startcnt, tld))
            cnt += 1
            curTime = time.strftime("%FT%TZ").replace('-', '').replace(':', '')
            contentFileName = PREFIX + '/' + DataBakPath + '/' + curTime + '-tld-query-' + tld.strip('.')
            contentFilelines = []
            ns_records = set()
            ip_records = set()
            is_dnssec = True
            for i in TldNameMap[tld]:
                curIP = 'unKnown'
                fileName = contentFileName + '-' + i.strip('.')
                filelines = []
                ip_or_name = i
                if(i.lower() in name_ip.keys()):
                    ip_or_name = name_ip[i.lower()]
                res1 = fetch(ip_or_name, tld, 'NS')
                if(res1[0] != 'ERROR'):
                    filelines.extend(res1[1:])
                    for record_temp in res1[1:]:
                        ns_records.add(record_temp)
                    if(';0' in res1[-1]):
                        is_dnssec = False
                res2 = fetch(ip_or_name, i, 'A')
                if(res2[0] != 'ERROR'):
                    filelines.extend(res2[1:])
                    curIP = res2[1].strip().split()[-1]
                    for record_temp in res2[1:]:
                        ip_records.add(record_temp)
                    if(';0' in res2[-1]):
                        is_dnssec = False
                res3 = fetch(ip_or_name, i, 'AAAA')
                if(res3[0] != 'ERROR'):
                    filelines.extend(res3[1:])
                    for record_temp in res3[1:]:
                        ip_records.add(record_temp)
                    if(';0' in res3[-1]):
                        is_dnssec = False
                source_id = 'tld-query-{}-{}'.format(tld, i)
                source_locator = i
                source_ip = curIP
                server = {'source_id': source_id, 'source_locator': source_locator, 'source_ip': source_ip}
                head = ''
                if(len(filelines) != 0 and curIP != 'unKnown'):
                    head = outputFileHead(curTime, server, 'success')
                else:
                    head = outputFileHead(curTime, server, 'fail')
                f = open(fileName, 'w')
                f.write(head)
                f.writelines(temp_line + '\n' for temp_line in filelines)
                f.close()
                contentFilelines.append('{}:{}\n'.format(i, fileName))

            for record_temp in ns_records:
                thread_merged_data.append(record_temp)
            for record_temp in ip_records:
                thread_merged_data.append(record_temp)
            if(is_dnssec):
                thread_merged_data.append(';1\n')
            else:
                thread_merged_data.append(';0\n')
            content_source_id = 'tld-query-{}'.format(tld)
            content_source_locator = 'none'
            content_source_ip = 'none'
            content_server = {'source_id': content_source_id, 'source_locator': content_source_locator, 'source_ip': content_source_ip}
            content_head = outputFileHead(curTime, content_server, 'success')
            f = open(contentFileName, 'w')
            f.write(content_head)
            f.writelines(temp_line + '\n' for temp_line in contentFilelines)
            f.close()
    
    startTime = time.strftime("%FT%TZ").replace('-', '').replace(':', '')

    tld_list = []
    for i in TldNameMap.keys():
        tld_list.append(i)
    
    onetot = int((len(tld_list) + NumofThread - 1) / NumofThread)
    thdList = []
    merge_data_list = []
    for i in range(NumofThread):
        t_list = []
        t_merge_data = []
        if(i == NumofThread - 1):
            t_list = tld_list[onetot*i:]
        else:
            t_list = tld_list[onetot*i:(onetot)*(i+1)]
        t_thd = threading.Thread(target=query, args=(i, t_list, onetot*i, t_merge_data, ))
        thdList.append(t_thd)
        merge_data_list.append(t_merge_data)
    
    for i in range(NumofThread):
        thdList[i].start()
    for i in range(NumofThread):
        thdList[i].join()
    
    for i in range(NumofThread):
        merged_data.extend(merge_data_list[i])

    merge_data_server = {'source_id': 'tld-spider', 'source_locator': 'none', 'source_ip': 'none'}
    merge_data_filename = startTime + '-tld-spider-merged'
    merge_data_head = ''
    if(len(merged_data) > 0):
        merge_data_head = outputFileHead(startTime, merge_data_server, 'success')		
    else:
        merge_data_head =outputFileHead(startTime, merge_data_server, 'fail')
    f = open(PREFIX + '/' + DataBakPath + '/' + merge_data_filename, 'w')
    f.write(merge_data_head)
    f.writelines(temp_line + '\n' for temp_line in merged_data)
    f.close()

    format(PREFIX + '/' + DataBakPath + '/' + merge_data_filename)
    print("one time tldspider has finished")

def format(filename):
    def cmp(x, y):
        t = x.strip('\n').lower().split()
        t1 = [t[0], t[2], t[3], t[4]]
        t = y.strip('\n').lower().split()
        t2 = [t[0], t[2], t[3], t[4]]
        for i in range(len(t1)):
            if(t1[i] == t2[i]):
                continue
            else:
                return -1 if(t1[i] < t2[i]) else 1
        return 0
    f = open(filename, 'r')
    lines = f.readlines()
    f.close()
    lines = lines[6:]
    t_lines = []
    for i in range(len(lines)):
        try:
            if(lines[i].split()[3].lower() in ['ns', 'a', 'aaaa']):
                t_lines.append(lines[i])
        except:
            pass
    outputfilename = PREFIX + '/' + DataPath + '/' + 'tld-spider-merged'
    t_lines.sort(key = functools.cmp_to_key(lambda x, y : cmp(x, y)))
    unique_lines = []
    for i in range(len(t_lines)):
        if(i == 0 or cmp(t_lines[i], t_lines[i - 1]) != 0):
            unique_lines.append(t_lines[i])
    f = open(outputfilename, 'w')
    for i in range(len(unique_lines)):
        f.write(unique_lines[i].lower())
    f.close()

def fetch(queryserver, tldstring, qtype):
    ReturnList = ['SUCCESS']
    ifdnssec = 0
    cmd = 'dig @{} {} {}'.format(queryserver, tldstring, qtype)
    sub = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    sub.wait()
    digcontent = sub.stdout.readlines()

    for i in range(len(digcontent)):
        digcontent[i] = digcontent[i].decode().strip('\n')

    answerstart = -1
    answerend = -1

    for i in range(len(digcontent)):
        if "ANSWER SECTION:" in digcontent[i]:
            answerstart = i + 1
        if "Query time" in digcontent[i] or "AUTHORITY SECTION" in digcontent[i] or "ADDITIONAL SECTION" in digcontent[i]:
            answerend = i - 1
            break
    
    if(answerstart == -1 or answerend == -1):
        errormsg = cmd + '\n'
        for i in range(len(digcontent)):
            errormsg = errormsg + digcontent[i] + '\n'
        logging.error('wrong query {}'.format(errormsg))
        return ['ERROR', errormsg]

    ReturnList.extend(digcontent[answerstart:answerend])

    return ReturnList

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