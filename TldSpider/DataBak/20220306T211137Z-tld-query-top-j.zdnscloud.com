; timestamp: 20220306T211137Z
; source id: tld-query-top.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
top.			3600	IN	NS	g.zdnscloud.com.top.			3600	IN	NS	b.zdnscloud.com.top.			3600	IN	NS	j.zdnscloud.com.top.			3600	IN	NS	i.zdnscloud.com.top.			3600	IN	NS	f.zdnscloud.com.top.			3600	IN	NS	d.zdnscloud.com.top.			3600	IN	NS	a.zdnscloud.com.top.			3600	IN	NS	c.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 64580
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 78dcae68d44cc213331ad4476224b3149846d2b65f7109d1 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 369 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:11:40 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 17994
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: ef3e0f436ec2571733072f856224b3146d00cd56ef986a7a (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 269 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:11:41 ;; MSG SIZE  rcvd: 72

