; timestamp: 20220306T212332Z
; source id: tld-query-xn--efvy88h.-g.zdnscloud.com.
; source locator: g.zdnscloud.com.
; source IP address: 42.62.2.16
; backup point IP address: 111.42.148.76
; status: success
xn--efvy88h.		3599	IN	NS	g.zdnscloud.com.xn--efvy88h.		3599	IN	NS	j.zdnscloud.com.xn--efvy88h.		3599	IN	NS	f.zdnscloud.com.xn--efvy88h.		3599	IN	NS	a.zdnscloud.com.xn--efvy88h.		3599	IN	NS	d.zdnscloud.com.xn--efvy88h.		3599	IN	NS	b.zdnscloud.com.xn--efvy88h.		3599	IN	NS	i.zdnscloud.com.xn--efvy88h.		3599	IN	NS	c.zdnscloud.com.g.zdnscloud.com.	1786	IN	A	42.62.2.16dig @42.62.2.16 g.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @42.62.2.16 g.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 41979
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;g.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		20	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 18 msec
;; SERVER: 42.62.2.16#53(42.62.2.16)
;; WHEN: Sun Mar 06 21:23:34 ;; MSG SIZE  rcvd: 111

