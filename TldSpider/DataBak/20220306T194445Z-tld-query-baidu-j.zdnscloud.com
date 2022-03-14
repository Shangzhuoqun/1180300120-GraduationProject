; timestamp: 20220306T194445Z
; source id: tld-query-baidu.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
baidu.			3600	IN	NS	j.zdnscloud.com.baidu.			3600	IN	NS	b.zdnscloud.com.baidu.			3600	IN	NS	g.zdnscloud.com.baidu.			3600	IN	NS	f.zdnscloud.com.baidu.			3600	IN	NS	i.zdnscloud.com.baidu.			3600	IN	NS	c.zdnscloud.com.baidu.			3600	IN	NS	a.zdnscloud.com.baidu.			3600	IN	NS	d.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 30594
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 61e0abc047d7217b96ba9efd62249eb858aeae15b871e222 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 251 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 19:44:48 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 21450
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 75c460afcf5a18fdffe3067f62249eb8d3b2bdbc99c159b7 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 253 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 19:44:49 ;; MSG SIZE  rcvd: 72

