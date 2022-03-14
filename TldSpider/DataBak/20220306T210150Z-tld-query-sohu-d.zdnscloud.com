; timestamp: 20220306T210150Z
; source id: tld-query-sohu.-d.zdnscloud.com.
; source locator: d.zdnscloud.com.
; source IP address: 203.99.27.1
; backup point IP address: 111.42.148.76
; status: success
sohu.			3599	IN	NS	i.zdnscloud.com.sohu.			3599	IN	NS	a.zdnscloud.com.sohu.			3599	IN	NS	f.zdnscloud.com.sohu.			3599	IN	NS	g.zdnscloud.com.sohu.			3599	IN	NS	b.zdnscloud.com.sohu.			3599	IN	NS	d.zdnscloud.com.sohu.			3599	IN	NS	j.zdnscloud.com.sohu.			3599	IN	NS	c.zdnscloud.com.d.zdnscloud.com.	2396	IN	A	203.99.27.1dig @203.99.27.1 d.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.27.1 d.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 54783
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;d.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		767	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 0 msec
;; SERVER: 203.99.27.1#53(203.99.27.1)
;; WHEN: Sun Mar 06 21:01:51 ;; MSG SIZE  rcvd: 111

