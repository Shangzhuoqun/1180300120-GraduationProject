; timestamp: 20220306T212157Z
; source id: tld-query-xn--6qq986b3xl.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--6qq986b3xl.		3600	IN	NS	d.zdnscloud.com.xn--6qq986b3xl.		3600	IN	NS	g.zdnscloud.com.xn--6qq986b3xl.		3600	IN	NS	i.zdnscloud.com.xn--6qq986b3xl.		3600	IN	NS	j.zdnscloud.com.xn--6qq986b3xl.		3600	IN	NS	a.zdnscloud.com.xn--6qq986b3xl.		3600	IN	NS	c.zdnscloud.com.xn--6qq986b3xl.		3600	IN	NS	b.zdnscloud.com.xn--6qq986b3xl.		3600	IN	NS	f.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 43655
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 60d2b37caefd073996e2b4576224b581f1baf3183143d29c (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 533 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:22:01 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 39131
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 7558c7bad09af9594d1ca5b76224b58139d4edbc06893049 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 265 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:22:02 ;; MSG SIZE  rcvd: 72

