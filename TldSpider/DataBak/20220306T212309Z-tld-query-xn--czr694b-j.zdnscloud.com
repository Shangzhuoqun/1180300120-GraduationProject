; timestamp: 20220306T212309Z
; source id: tld-query-xn--czr694b.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--czr694b.		3600	IN	NS	f.zdnscloud.com.xn--czr694b.		3600	IN	NS	d.zdnscloud.com.xn--czr694b.		3600	IN	NS	b.zdnscloud.com.xn--czr694b.		3600	IN	NS	i.zdnscloud.com.xn--czr694b.		3600	IN	NS	g.zdnscloud.com.xn--czr694b.		3600	IN	NS	c.zdnscloud.com.xn--czr694b.		3600	IN	NS	j.zdnscloud.com.xn--czr694b.		3600	IN	NS	a.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 21313
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 2d4bd5c064f622d0834913ed6224b5c80a539711a41c98dc (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 272 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:13 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 27992
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 49f35dfbc42010bb7e50483d6224b5c9085244a1492a28d8 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 253 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:13 ;; MSG SIZE  rcvd: 72

