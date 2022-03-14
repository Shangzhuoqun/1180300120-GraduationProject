; timestamp: 20220306T203916Z
; source id: tld-query-mp.-ns2.nic.mp.
; source locator: ns2.nic.mp.
; source IP address: 16.163.54.122
; backup point IP address: 111.42.148.76
; status: success
mp.			86400	IN	NS	ns2.nic.mp.mp.			86400	IN	NS	ns3.nic.mp.mp.			86400	IN	NS	ns4.nic.mp.mp.			86400	IN	NS	ns1.nic.mp.ns2.nic.mp.		3595	IN	A	16.163.54.122dig @16.163.54.122 ns2.nic.mp. AAAA

; <<>> DiG 9.16.23 <<>> @16.163.54.122 ns2.nic.mp. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 42371
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns2.nic.mp.			IN	AAAA

;; AUTHORITY SECTION:
mp.			296	IN	SOA	ns1.nic.mp. support.get.mp. 1 86400 7200 604800 300

;; Query time: 4 msec
;; SERVER: 16.163.54.122#53(16.163.54.122)
;; WHEN: Sun Mar 06 20:39:22 ;; MSG SIZE  rcvd: 91

