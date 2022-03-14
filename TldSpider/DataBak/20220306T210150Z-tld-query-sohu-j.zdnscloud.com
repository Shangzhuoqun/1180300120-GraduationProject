; timestamp: 20220306T210150Z
; source id: tld-query-sohu.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
sohu.			3600	IN	NS	f.zdnscloud.com.sohu.			3600	IN	NS	i.zdnscloud.com.sohu.			3600	IN	NS	a.zdnscloud.com.sohu.			3600	IN	NS	g.zdnscloud.com.sohu.			3600	IN	NS	j.zdnscloud.com.sohu.			3600	IN	NS	c.zdnscloud.com.sohu.			3600	IN	NS	b.zdnscloud.com.sohu.			3600	IN	NS	d.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 20050
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 828f06d17a33380958b2fce26224b0c8ccff813b7cd1577b (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 335 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:01:52 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 25703
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 58d13b68b4a6c9800c3af1206224b0c817847f0b45529a50 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 253 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:01:53 ;; MSG SIZE  rcvd: 72

