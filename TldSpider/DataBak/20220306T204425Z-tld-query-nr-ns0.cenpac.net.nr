; timestamp: 20220306T204425Z
; source id: tld-query-nr.-ns0.cenpac.net.nr.
; source locator: ns0.cenpac.net.nr.
; source IP address: 203.98.224.66
; backup point IP address: 111.42.148.76
; status: success
nr.			86400	IN	NS	ns1.cenpac.net.nr.nr.			86400	IN	NS	phloem.uoregon.edu.nr.			86400	IN	NS	ns0.cenpac.net.nr.nr.			86400	IN	NS	ns2.cenpac.net.nr.ns0.cenpac.net.nr.	3600	IN	A	203.98.224.66dig @203.98.224.66 ns0.cenpac.net.nr. AAAA

; <<>> DiG 9.16.23 <<>> @203.98.224.66 ns0.cenpac.net.nr. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 33608
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns0.cenpac.net.nr.		IN	AAAA

;; AUTHORITY SECTION:
cenpac.net.nr.		1800	IN	SOA	ns0.cenpac.net.nr. management.cenpac.net.nr. 2022030400 3600 1800 2419200 86400

;; Query time: 8 msec
;; SERVER: 203.98.224.66#53(203.98.224.66)
;; WHEN: Sun Mar 06 20:44:27 ;; MSG SIZE  rcvd: 93

