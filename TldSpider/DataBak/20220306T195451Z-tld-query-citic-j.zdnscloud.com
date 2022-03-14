; timestamp: 20220306T195451Z
; source id: tld-query-citic.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
citic.			3600	IN	NS	b.zdnscloud.com.citic.			3600	IN	NS	c.zdnscloud.com.citic.			3600	IN	NS	j.zdnscloud.com.citic.			3600	IN	NS	a.zdnscloud.com.citic.			3600	IN	NS	i.zdnscloud.com.citic.			3600	IN	NS	f.zdnscloud.com.citic.			3600	IN	NS	g.zdnscloud.com.citic.			3600	IN	NS	d.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 2942
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: c20a22aa1464e75375a758886224a115a061aae7576b69e2 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 258 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 19:54:54 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 27189
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 31d17e9c49b644d5cd87b1a96224a115cdf04919cfe4c08c (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 251 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 19:54:54 ;; MSG SIZE  rcvd: 72

