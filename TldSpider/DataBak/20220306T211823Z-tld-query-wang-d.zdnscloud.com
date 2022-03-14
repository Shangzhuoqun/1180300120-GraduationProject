; timestamp: 20220306T211823Z
; source id: tld-query-wang.-d.zdnscloud.com.
; source locator: d.zdnscloud.com.
; source IP address: 203.99.27.1
; backup point IP address: 111.42.148.76
; status: success
wang.			3599	IN	NS	a.zdnscloud.com.wang.			3599	IN	NS	f.zdnscloud.com.wang.			3599	IN	NS	j.zdnscloud.com.wang.			3599	IN	NS	d.zdnscloud.com.wang.			3599	IN	NS	i.zdnscloud.com.wang.			3599	IN	NS	g.zdnscloud.com.wang.			3599	IN	NS	c.zdnscloud.com.wang.			3599	IN	NS	b.zdnscloud.com.d.zdnscloud.com.	1402	IN	A	203.99.27.1dig @203.99.27.1 d.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.27.1 d.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 37679
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;d.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		1047	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 0 msec
;; SERVER: 203.99.27.1#53(203.99.27.1)
;; WHEN: Sun Mar 06 21:18:24 ;; MSG SIZE  rcvd: 111

