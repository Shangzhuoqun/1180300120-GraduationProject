; timestamp: 20220306T212317Z
; source id: tld-query-xn--czru2d.-c.zdnscloud.com.
; source locator: c.zdnscloud.com.
; source IP address: 203.99.26.1
; backup point IP address: 111.42.148.76
; status: success
xn--czru2d.		3600	IN	NS	f.zdnscloud.com.xn--czru2d.		3600	IN	NS	j.zdnscloud.com.xn--czru2d.		3600	IN	NS	a.zdnscloud.com.xn--czru2d.		3600	IN	NS	g.zdnscloud.com.xn--czru2d.		3600	IN	NS	i.zdnscloud.com.xn--czru2d.		3600	IN	NS	b.zdnscloud.com.xn--czru2d.		3600	IN	NS	c.zdnscloud.com.xn--czru2d.		3600	IN	NS	d.zdnscloud.com.c.zdnscloud.com.	1290	IN	A	203.99.26.1dig @203.99.26.1 c.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.26.1 c.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 4729
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;c.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		389	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 21 msec
;; SERVER: 203.99.26.1#53(203.99.26.1)
;; WHEN: Sun Mar 06 21:23:19 ;; MSG SIZE  rcvd: 111

