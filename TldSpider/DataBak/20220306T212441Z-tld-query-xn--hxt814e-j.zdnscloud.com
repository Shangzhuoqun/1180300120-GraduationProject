; timestamp: 20220306T212441Z
; source id: tld-query-xn--hxt814e.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--hxt814e.		3600	IN	NS	g.zdnscloud.com.xn--hxt814e.		3600	IN	NS	a.zdnscloud.com.xn--hxt814e.		3600	IN	NS	b.zdnscloud.com.xn--hxt814e.		3600	IN	NS	f.zdnscloud.com.xn--hxt814e.		3600	IN	NS	c.zdnscloud.com.xn--hxt814e.		3600	IN	NS	j.zdnscloud.com.xn--hxt814e.		3600	IN	NS	d.zdnscloud.com.xn--hxt814e.		3600	IN	NS	i.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 29628
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 76a03cbd6f459b64259ebd7b6224b6240f0baca235d3c8f7 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 256 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:24:44 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 13393
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 80e87c925c1c7480920851d66224b624935f0c9c59fab4f0 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 256 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:24:44 ;; MSG SIZE  rcvd: 72

