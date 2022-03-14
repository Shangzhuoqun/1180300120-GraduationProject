; timestamp: 20220306T212059Z
; source id: tld-query-xn--30rr7y.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--30rr7y.		3600	IN	NS	f.zdnscloud.com.xn--30rr7y.		3600	IN	NS	g.zdnscloud.com.xn--30rr7y.		3600	IN	NS	j.zdnscloud.com.xn--30rr7y.		3600	IN	NS	i.zdnscloud.com.xn--30rr7y.		3600	IN	NS	a.zdnscloud.com.xn--30rr7y.		3600	IN	NS	d.zdnscloud.com.xn--30rr7y.		3600	IN	NS	c.zdnscloud.com.xn--30rr7y.		3600	IN	NS	b.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 33098
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: ad70f93f2835cf1df8b9bd6f6224b54652ab3b14bede97d3 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 265 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:21:02 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 20433
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 3dab0b1ef9f67cbdf41c2c3d6224b5460eb55b87d090ba70 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 258 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:21:02 ;; MSG SIZE  rcvd: 72

