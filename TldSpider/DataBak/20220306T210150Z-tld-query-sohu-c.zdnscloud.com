; timestamp: 20220306T210150Z
; source id: tld-query-sohu.-c.zdnscloud.com.
; source locator: c.zdnscloud.com.
; source IP address: 203.99.26.1
; backup point IP address: 111.42.148.76
; status: success
sohu.			3599	IN	NS	b.zdnscloud.com.sohu.			3599	IN	NS	i.zdnscloud.com.sohu.			3599	IN	NS	d.zdnscloud.com.sohu.			3599	IN	NS	f.zdnscloud.com.sohu.			3599	IN	NS	j.zdnscloud.com.sohu.			3599	IN	NS	a.zdnscloud.com.sohu.			3599	IN	NS	c.zdnscloud.com.sohu.			3599	IN	NS	g.zdnscloud.com.c.zdnscloud.com.	563	IN	A	203.99.26.1dig @203.99.26.1 c.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.26.1 c.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 13595
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;c.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		798	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 0 msec
;; SERVER: 203.99.26.1#53(203.99.26.1)
;; WHEN: Sun Mar 06 21:01:50 ;; MSG SIZE  rcvd: 111

