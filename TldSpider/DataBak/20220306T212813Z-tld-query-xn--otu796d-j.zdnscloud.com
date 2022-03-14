; timestamp: 20220306T212813Z
; source id: tld-query-xn--otu796d.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--otu796d.		3600	IN	NS	f.zdnscloud.com.xn--otu796d.		3600	IN	NS	g.zdnscloud.com.xn--otu796d.		3600	IN	NS	d.zdnscloud.com.xn--otu796d.		3600	IN	NS	i.zdnscloud.com.xn--otu796d.		3600	IN	NS	j.zdnscloud.com.xn--otu796d.		3600	IN	NS	b.zdnscloud.com.xn--otu796d.		3600	IN	NS	c.zdnscloud.com.xn--otu796d.		3600	IN	NS	a.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 4281
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 5bb139c2285c8e5a2287a3bd6224b6f988f329b69b7cf8ce (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 266 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:28:18 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 51325
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: e3bd880c04c2a97fc75ffe976224b6fa23ff3ca7d337eb56 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 256 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:28:18 ;; MSG SIZE  rcvd: 72

