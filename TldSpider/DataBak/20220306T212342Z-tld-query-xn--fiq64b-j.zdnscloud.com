; timestamp: 20220306T212342Z
; source id: tld-query-xn--fiq64b.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
xn--fiq64b.		3600	IN	NS	d.zdnscloud.com.

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 31001
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 3ae038c9c1d4d9353f0880246224b5e8e2b56ecb70f9255e (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 253 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:44 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 15906
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 7e71f1166ceeb9b767d102e46224b5e87a5ace385e992a72 (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 278 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 21:23:45 ;; MSG SIZE  rcvd: 72
