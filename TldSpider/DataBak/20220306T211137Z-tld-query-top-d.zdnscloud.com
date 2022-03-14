; timestamp: 20220306T211137Z
; source id: tld-query-top.-d.zdnscloud.com.
; source locator: d.zdnscloud.com.
; source IP address: 203.99.27.1
; backup point IP address: 111.42.148.76
; status: success
top.			3343	IN	NS	i.zdnscloud.com.top.			3343	IN	NS	b.zdnscloud.com.top.			3343	IN	NS	d.zdnscloud.com.top.			3343	IN	NS	f.zdnscloud.com.top.			3343	IN	NS	g.zdnscloud.com.top.			3343	IN	NS	j.zdnscloud.com.top.			3343	IN	NS	a.zdnscloud.com.top.			3343	IN	NS	c.zdnscloud.com.d.zdnscloud.com.	1808	IN	A	203.99.27.1dig @203.99.27.1 d.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.27.1 d.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 14666
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;d.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		179	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 21 msec
;; SERVER: 203.99.27.1#53(203.99.27.1)
;; WHEN: Sun Mar 06 21:11:39 ;; MSG SIZE  rcvd: 111

