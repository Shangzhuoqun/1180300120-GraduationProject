; timestamp: 20220306T212850Z
; source id: tld-query-xn--ses554g.-i.zdnscloud.com.
; source locator: i.zdnscloud.com.
; source IP address: 50
; backup point IP address: 111.42.148.76
; status: success
xn--ses554g.		3600	IN	NS	a.zdnscloud.com.xn--ses554g.		3600	IN	NS	b.zdnscloud.com.xn--ses554g.		3600	IN	NS	c.zdnscloud.com.xn--ses554g.		3600	IN	NS	d.zdnscloud.com.xn--ses554g.		3600	IN	NS	f.zdnscloud.com.xn--ses554g.		3600	IN	NS	g.zdnscloud.com.xn--ses554g.		3600	IN	NS	i.zdnscloud.com.xn--ses554g.		3600	IN	NS	j.zdnscloud.com.dig @i.zdnscloud.com. i.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @i.zdnscloud.com. i.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 1180
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1232
; EDE: 20 (Not Authoritative)
;; QUESTION SECTION:
;i.zdnscloud.com.		IN	A

;; Query time: 31 msec
;; SERVER: 2401:8d00:1::1#53(2401:8d00:1::1)
;; WHEN: Sun Mar 06 21:28:52 ;; MSG SIZE  rcvd: 50

dig @i.zdnscloud.com. i.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @i.zdnscloud.com. i.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 6352
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1232
; EDE: 20 (Not Authoritative)
;; QUESTION SECTION:
;i.zdnscloud.com.		IN	AAAA

;; Query time: 32 msec
;; SERVER: 2401:8d00:1::1#53(2401:8d00:1::1)
;; WHEN: Sun Mar 06 21:28:52 ;; MSG SIZE  rcvd: 50

