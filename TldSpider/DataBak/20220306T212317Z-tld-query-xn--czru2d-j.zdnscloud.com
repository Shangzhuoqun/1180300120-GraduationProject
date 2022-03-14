; timestamp: 20220306T212317Z
; source id: tld-query-xn--czru2d.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--czru2d.		3600	IN	NS	a.zdnscloud.com.xn--czru2d.		3600	IN	NS	d.zdnscloud.com.xn--czru2d.		3600	IN	NS	b.zdnscloud.com.xn--czru2d.		3600	IN	NS	g.zdnscloud.com.xn--czru2d.		3600	IN	NS	i.zdnscloud.com.xn--czru2d.		3600	IN	NS	f.zdnscloud.com.xn--czru2d.		3600	IN	NS	c.zdnscloud.com.xn--czru2d.		3600	IN	NS	j.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 59498
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: b8a888ea855e289970e05ad36224b5d04052da7e21d366ed (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 258 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:20 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 33893
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: dd24c2b8f8c8ef6ba153738e6224b5d0ce6cd844611bfb22 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 254 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:21 ;; MSG SIZE  rcvd: 72

