; timestamp: 20220306T212214Z
; source id: tld-query-xn--8y0a063a.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--8y0a063a.		3600	IN	NS	a.zdnscloud.com.xn--8y0a063a.		3600	IN	NS	f.zdnscloud.com.xn--8y0a063a.		3600	IN	NS	b.zdnscloud.com.xn--8y0a063a.		3600	IN	NS	j.zdnscloud.com.xn--8y0a063a.		3600	IN	NS	g.zdnscloud.com.xn--8y0a063a.		3600	IN	NS	i.zdnscloud.com.xn--8y0a063a.		3600	IN	NS	c.zdnscloud.com.xn--8y0a063a.		3600	IN	NS	d.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 33679
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: a90814f9f271186c054674226224b5901fb2f62fc0c33cee (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 262 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:22:16 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 41963
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 13a6cd2dbbf30244d0152fad6224b59071ef6ef3f6f1807c (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 260 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:22:17 ;; MSG SIZE  rcvd: 72

