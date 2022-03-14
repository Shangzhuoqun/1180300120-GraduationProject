; timestamp: 20220306T203916Z
; source id: tld-query-mp.-ns4.nic.mp.
; source locator: ns4.nic.mp.
; source IP address: 75.101.133.101
; backup point IP address: 111.42.148.76
; status: success
mp.			86400	IN	NS	ns2.nic.mp.mp.			86400	IN	NS	ns1.nic.mp.mp.			86400	IN	NS	ns4.nic.mp.mp.			86400	IN	NS	ns3.nic.mp.ns4.nic.mp.		3593	IN	A	75.101.133.101dig @75.101.133.101 ns4.nic.mp. AAAA

; <<>> DiG 9.16.23 <<>> @75.101.133.101 ns4.nic.mp. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 20148
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns4.nic.mp.			IN	AAAA

;; AUTHORITY SECTION:
mp.			293	IN	SOA	ns1.nic.mp. support.get.mp. 1 86400 7200 604800 300

;; Query time: 4 msec
;; SERVER: 75.101.133.101#53(75.101.133.101)
;; WHEN: Sun Mar 06 20:39:23 ;; MSG SIZE  rcvd: 91

