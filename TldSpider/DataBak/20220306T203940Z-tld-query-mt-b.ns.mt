; timestamp: 20220306T203940Z
; source id: tld-query-mt.-b.ns.mt.
; source locator: b.ns.mt.
; source IP address: 193.188.34.241
; backup point IP address: 111.42.148.76
; status: success
mt.			86400	IN	NS	a.ns.mt.mt.			86400	IN	NS	b.ns.mt.mt.			86400	IN	NS	f.ns.mt.mt.			86400	IN	NS	p.ns.mt.b.ns.mt.		3599	IN	A	193.188.34.241dig @193.188.34.241 b.ns.mt. AAAA

; <<>> DiG 9.16.23 <<>> @193.188.34.241 b.ns.mt. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 33950
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;b.ns.mt.			IN	AAAA

;; AUTHORITY SECTION:
mt.			1799	IN	SOA	a.ns.mt. tech.nic.org.mt. 2022030407 1800 900 604800 86400

;; Query time: 4 msec
;; SERVER: 193.188.34.241#53(193.188.34.241)
;; WHEN: Sun Mar 06 20:39:41 ;; MSG SIZE  rcvd: 87

