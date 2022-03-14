; timestamp: 20220306T212120Z
; source id: tld-query-xn--45q11c.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--45q11c.		3600	IN	NS	a.zdnscloud.com.xn--45q11c.		3600	IN	NS	f.zdnscloud.com.xn--45q11c.		3600	IN	NS	g.zdnscloud.com.xn--45q11c.		3600	IN	NS	j.zdnscloud.com.xn--45q11c.		3600	IN	NS	c.zdnscloud.com.xn--45q11c.		3600	IN	NS	i.zdnscloud.com.xn--45q11c.		3600	IN	NS	b.zdnscloud.com.xn--45q11c.		3600	IN	NS	d.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 876
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: db0f53e72518bc2db034be246224b55cbc43725efaf17255 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 257 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:21:24 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 14360
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 9a4df967a91b5ed5a45a5c536224b55d2ffcb44f868f52f2 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 265 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:21:25 ;; MSG SIZE  rcvd: 72

