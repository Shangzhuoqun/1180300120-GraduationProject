; timestamp: 20220306T212332Z
; source id: tld-query-xn--efvy88h.-d.zdnscloud.com.
; source locator: d.zdnscloud.com.
; source IP address: 203.99.27.1
; backup point IP address: 111.42.148.76
; status: success
xn--efvy88h.		3599	IN	NS	f.zdnscloud.com.xn--efvy88h.		3599	IN	NS	b.zdnscloud.com.xn--efvy88h.		3599	IN	NS	a.zdnscloud.com.xn--efvy88h.		3599	IN	NS	j.zdnscloud.com.xn--efvy88h.		3599	IN	NS	c.zdnscloud.com.xn--efvy88h.		3599	IN	NS	d.zdnscloud.com.xn--efvy88h.		3599	IN	NS	g.zdnscloud.com.xn--efvy88h.		3599	IN	NS	i.zdnscloud.com.d.zdnscloud.com.	1093	IN	A	203.99.27.1dig @203.99.27.1 d.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.27.1 d.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 43574
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;d.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		738	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 15 msec
;; SERVER: 203.99.27.1#53(203.99.27.1)
;; WHEN: Sun Mar 06 21:23:33 ;; MSG SIZE  rcvd: 111

