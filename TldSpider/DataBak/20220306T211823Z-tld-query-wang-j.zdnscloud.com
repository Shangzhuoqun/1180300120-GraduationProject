; timestamp: 20220306T211823Z
; source id: tld-query-wang.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
wang.			3600	IN	NS	b.zdnscloud.com.wang.			3600	IN	NS	f.zdnscloud.com.wang.			3600	IN	NS	a.zdnscloud.com.wang.			3600	IN	NS	g.zdnscloud.com.wang.			3600	IN	NS	i.zdnscloud.com.wang.			3600	IN	NS	c.zdnscloud.com.wang.			3600	IN	NS	d.zdnscloud.com.wang.			3600	IN	NS	j.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 43203
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 0421d7097ff87193472eca0d6224b4aaab9ed9027fc93143 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 265 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:18:26 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 46714
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 20a1366e73fb3e7b81b2f6046224b4aada9e66e663114762 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 311 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:18:26 ;; MSG SIZE  rcvd: 72

