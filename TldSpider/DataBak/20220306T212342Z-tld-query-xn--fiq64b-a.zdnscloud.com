; timestamp: 20220306T212342Z
; source id: tld-query-xn--fiq64b.-a.zdnscloud.com.
; source locator: a.zdnscloud.com.
; source IP address: 203.99.24.1
; backup point IP address: 111.42.148.76
; status: success
xn--fiq64b.		3600	IN	NS	f.zdnscloud.com.xn--fiq64b.		3600	IN	NS	j.zdnscloud.com.xn--fiq64b.		3600	IN	NS	i.zdnscloud.com.xn--fiq64b.		3600	IN	NS	a.zdnscloud.com.xn--fiq64b.		3600	IN	NS	c.zdnscloud.com.xn--fiq64b.		3600	IN	NS	b.zdnscloud.com.xn--fiq64b.		3600	IN	NS	g.zdnscloud.com.xn--fiq64b.		3600	IN	NS	d.zdnscloud.com.a.zdnscloud.com.	1093	IN	A	203.99.24.1dig @203.99.24.1 a.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.24.1 a.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 44357
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;a.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		10	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 15 msec
;; SERVER: 203.99.24.1#53(203.99.24.1)
;; WHEN: Sun Mar 06 21:23:42 ;; MSG SIZE  rcvd: 111

