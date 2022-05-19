import subprocess
import logging
import os
import json
from scapy.all import *

PREFIX = os.path.dirname(os.path.abspath(__file__))
logPath = None
dataPath = None
abnormalTLDFileList = None
customizeRecordsPath = None
latestCredibleRecordsPath = None
serverIPList = None

abnormalTLD = set()
customizeTLD = set()
not_customizedTLD = set()
trustedRecords = []

tld_ns_map = {}
tld_ar_map = {}

def readConf():
    global logPath
    global dataPath
    global abnormalTLDFileList
    global customizeRecordsPath
    global latestCredibleRecordsPath
    global serverIPList
    intercept_reply = json.load(open('./Configuration.in', 'r'))['intercept-reply']
    if(intercept_reply == None):
        print('Please check Configuration.in')
        exit(1)
    logPath = str(intercept_reply['logPath'])
    dataPath = str(intercept_reply['dataPath'])
    abnormalTLDFileList =intercept_reply['abnormalTLDFileList']
    customizeRecordsPath = str(intercept_reply['customizeRecordsPath'])
    latestCredibleRecordsPath = str(intercept_reply['latestCredibleRecordsPath'])
    serverIPList = intercept_reply['serverIPList']

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
            abnormalTLD.add(tld.strip('.'))
    
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

def producepackage(tld, records):
    ns_list = []
    ar_list = []
    for line in records:
        line = line.strip('\n')
        if(line.split()[3].lower() == 'ns'):
            ns_list.append(line)
        if(line.split()[3].lower() in ['a', 'aaaa']):
            ar_list.append(line)
    ns = None
    ar = None
    for i in range(len(ns_list)):
        temp = ns_list[i].split()
        t_dnsrr = DNSRR(rrname = tld+'.', ttl = int(temp[1]), type = temp[3].upper(), rdata = temp[4])
        if(ns):
            ns = ns/t_dnsrr
        else:
            ns = t_dnsrr
    for i in range(len(ar_list)):
        temp = ar_list[i].split()
        t_dnsrr = DNSRR(rrname = tld+'.', ttl = int(temp[1]), type = temp[3].upper(), rdata = temp[4])
        if(ar):
            ar = ar/t_dnsrr
        else:
            ar = t_dnsrr
    return {'ns': [len(ns_list), ns], 'ar': [len(ar_list), ar]}

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
            package_info = producepackage(temp_tld, lines)
            tld_ns_map[temp_tld] = package_info['ns']
            tld_ar_map[temp_tld] = package_info['ar']
        else:
            not_customizedTLD.add(temp_tld)
            f = open('../' + latestCredibleRecordsPath + '/latest-' + temp_tld, 'r')
            lines = f.readlines()
            f.close()
            package_info = producepackage(temp_tld, lines)
            tld_ns_map[temp_tld] = package_info['ns']
            tld_ar_map[temp_tld] = package_info['ar']

def callback(pkt):
    global abnormalTLD
    global serverIPList
    try:
        pkt_tld = (pkt[DNS].qd.qname).decode().strip('.').split('.')[-1].lower()
        if(pkt_tld in abnormalTLD and pkt[IP].dst in serverIPList):
            srcIP = pkt[IP].src
            dstIP = pkt[IP].dst
            srcport = pkt[UDP].sport
            dstport = pkt[UDP].dport
            queryName = pkt[DNS].qd.qname
            myid = pkt[DNS].id
            send_pkt = IP(src = dstIP, dst = srcIP) / UDP(sport = dstport, dport = srcport) / DNS(id = myid, qr = 1, opcode = 'QUERY', aa = 0, tc = 0, rd = 1, ra = 0, z = 0, ad = 0, cd = 0, rcode = 'ok', qdcount = 1, ancount=0, nscount=int(tld_ns_map[pkt_tld][0]), arcount=int(tld_ar_map[pkt_tld][0]),
                            qd=(DNSQR(qname = queryName, qtype = 'NS')),
                            ns=tld_ns_map[pkt_tld][1],
                            ar=tld_ar_map[pkt_tld][1])
            send(send_pkt)
    except:
        pass

if __name__ == '__main__':
    os.chdir(PREFIX)
    readConf()
    getAbnormalTLD()
    getCustomizeTLD()
    getTrustedRecords()
    sniff(prn = callback)