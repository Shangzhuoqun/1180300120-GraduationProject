; timestamp: 20220306T204425Z
; source id: tld-query-nr.-ns1.cenpac.net.nr.
; source locator: ns1.cenpac.net.nr.
; source IP address: 203.98.225.9
; backup point IP address: 111.42.148.76
; status: success
nr.			86400	IN	NS	ns2.cenpac.net.nr.nr.			86400	IN	NS	ns0.cenpac.net.nr.nr.			86400	IN	NS	ns1.cenpac.net.nr.nr.			86400	IN	NS	phloem.uoregon.edu.ns1.cenpac.net.nr.	3600	IN	A	203.98.225.9dig @203.98.225.9 ns1.cenpac.net.nr. AAAA

; <<>> DiG 9.16.23 <<>> @203.98.225.9 ns1.cenpac.net.nr. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 63159
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.cenpac.net.nr.		IN	AAAA

;; AUTHORITY SECTION:
cenpac.net.nr.		1799	IN	SOA	ns0.cenpac.net.nr. management.cenpac.net.nr. 2022030400 3600 1800 2419200 86400

;; Query time: 6 msec
;; SERVER: 203.98.225.9#53(203.98.225.9)
;; WHEN: Sun Mar 06 20:44:29 ;; MSG SIZE  rcvd: 97

