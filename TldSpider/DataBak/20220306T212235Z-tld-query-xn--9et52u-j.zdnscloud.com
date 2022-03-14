; timestamp: 20220306T212235Z
; source id: tld-query-xn--9et52u.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--9et52u.		3600	IN	NS	d.zdnscloud.com.xn--9et52u.		3600	IN	NS	f.zdnscloud.com.xn--9et52u.		3600	IN	NS	b.zdnscloud.com.xn--9et52u.		3600	IN	NS	j.zdnscloud.com.xn--9et52u.		3600	IN	NS	g.zdnscloud.com.xn--9et52u.		3600	IN	NS	i.zdnscloud.com.xn--9et52u.		3600	IN	NS	a.zdnscloud.com.xn--9et52u.		3600	IN	NS	c.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 21189
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 608d61aea1392522e7eb01556224b5a653334f0e5a2c0755 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 254 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:22:38 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 39983
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 6a5a67bf89d09a84104657e36224b5a628f9e96a31f4d41a (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 253 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:22:38 ;; MSG SIZE  rcvd: 72

