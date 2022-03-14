; timestamp: 20220306T212102Z
; source id: tld-query-xn--3bst00m.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--3bst00m.		3600	IN	NS	d.zdnscloud.com.xn--3bst00m.		3600	IN	NS	i.zdnscloud.com.xn--3bst00m.		3600	IN	NS	b.zdnscloud.com.xn--3bst00m.		3600	IN	NS	a.zdnscloud.com.xn--3bst00m.		3600	IN	NS	j.zdnscloud.com.xn--3bst00m.		3600	IN	NS	c.zdnscloud.com.xn--3bst00m.		3600	IN	NS	f.zdnscloud.com.xn--3bst00m.		3600	IN	NS	g.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 19376
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 7546128348d1dc129889a2756224b549cb89b0c694c273b5 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 254 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:21:05 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 41273
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: f3697f2e45edca2beb4cbd976224b5499beba3af47026649 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 253 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:21:06 ;; MSG SIZE  rcvd: 72

