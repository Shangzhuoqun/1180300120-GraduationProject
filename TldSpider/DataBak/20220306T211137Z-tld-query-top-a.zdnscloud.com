; timestamp: 20220306T211137Z
; source id: tld-query-top.-a.zdnscloud.com.
; source locator: a.zdnscloud.com.
; source IP address: 203.99.24.1
; backup point IP address: 111.42.148.76
; status: success
top.			3344	IN	NS	g.zdnscloud.com.top.			3344	IN	NS	j.zdnscloud.com.top.			3344	IN	NS	f.zdnscloud.com.top.			3344	IN	NS	c.zdnscloud.com.top.			3344	IN	NS	i.zdnscloud.com.top.			3344	IN	NS	d.zdnscloud.com.top.			3344	IN	NS	a.zdnscloud.com.top.			3344	IN	NS	b.zdnscloud.com.a.zdnscloud.com.	1817	IN	A	203.99.24.1dig @203.99.24.1 a.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.24.1 a.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 21794
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;a.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		735	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 15 msec
;; SERVER: 203.99.24.1#53(203.99.24.1)
;; WHEN: Sun Mar 06 21:11:37 ;; MSG SIZE  rcvd: 111

