; timestamp: 20220306T212332Z
; source id: tld-query-xn--efvy88h.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--efvy88h.		3600	IN	NS	j.zdnscloud.com.xn--efvy88h.		3600	IN	NS	d.zdnscloud.com.xn--efvy88h.		3600	IN	NS	c.zdnscloud.com.xn--efvy88h.		3600	IN	NS	b.zdnscloud.com.xn--efvy88h.		3600	IN	NS	i.zdnscloud.com.xn--efvy88h.		3600	IN	NS	f.zdnscloud.com.xn--efvy88h.		3600	IN	NS	g.zdnscloud.com.xn--efvy88h.		3600	IN	NS	a.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 6274
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 9c528f615c87dd5e0098968c6224b5df06a363eacf208347 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 330 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:35 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 24898
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 173497f5998b9bc141c478ac6224b5df5469845a55317cd6 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 256 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:36 ;; MSG SIZE  rcvd: 72

