; timestamp: 20220306T203916Z
; source id: tld-query-mp.-ns3.nic.mp.
; source locator: ns3.nic.mp.
; source IP address: 75.101.129.89
; backup point IP address: 111.42.148.76
; status: success
mp.			86400	IN	NS	ns1.nic.mp.mp.			86400	IN	NS	ns3.nic.mp.mp.			86400	IN	NS	ns4.nic.mp.mp.			86400	IN	NS	ns2.nic.mp.ns3.nic.mp.		3594	IN	A	75.101.129.89dig @75.101.129.89 ns3.nic.mp. AAAA

; <<>> DiG 9.16.23 <<>> @75.101.129.89 ns3.nic.mp. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 27343
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns3.nic.mp.			IN	AAAA

;; AUTHORITY SECTION:
mp.			295	IN	SOA	ns1.nic.mp. support.get.mp. 1 86400 7200 604800 300

;; Query time: 6 msec
;; SERVER: 75.101.129.89#53(75.101.129.89)
;; WHEN: Sun Mar 06 20:39:23 ;; MSG SIZE  rcvd: 91

