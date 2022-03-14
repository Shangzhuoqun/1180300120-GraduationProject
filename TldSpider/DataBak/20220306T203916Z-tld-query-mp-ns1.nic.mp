; timestamp: 20220306T203916Z
; source id: tld-query-mp.-ns1.nic.mp.
; source locator: ns1.nic.mp.
; source IP address: 16.162.31.128
; backup point IP address: 111.42.148.76
; status: success
mp.			3600	IN	NS	ns4.nic.mp.mp.			3600	IN	NS	ns2.nic.mp.mp.			3600	IN	NS	ns1.nic.mp.mp.			3600	IN	NS	ns3.nic.mp.ns1.nic.mp.		3600	IN	A	16.162.31.128dig @16.162.31.128 ns1.nic.mp. AAAA

; <<>> DiG 9.16.23 <<>> @16.162.31.128 ns1.nic.mp. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 55572
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.nic.mp.			IN	AAAA

;; AUTHORITY SECTION:
mp.			300	IN	SOA	ns1.nic.mp. support.get.mp. 1 86400 7200 604800 300

;; Query time: 6 msec
;; SERVER: 16.162.31.128#53(16.162.31.128)
;; WHEN: Sun Mar 06 20:39:16 ;; MSG SIZE  rcvd: 87

