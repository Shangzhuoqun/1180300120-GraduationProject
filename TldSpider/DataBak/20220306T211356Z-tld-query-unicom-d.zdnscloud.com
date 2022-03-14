; timestamp: 20220306T211356Z
; source id: tld-query-unicom.-d.zdnscloud.com.
; source locator: d.zdnscloud.com.
; source IP address: 203.99.27.1
; backup point IP address: 111.42.148.76
; status: success
unicom.			3599	IN	NS	a.zdnscloud.com.unicom.			3599	IN	NS	j.zdnscloud.com.unicom.			3599	IN	NS	c.zdnscloud.com.unicom.			3599	IN	NS	b.zdnscloud.com.unicom.			3599	IN	NS	g.zdnscloud.com.unicom.			3599	IN	NS	d.zdnscloud.com.unicom.			3599	IN	NS	i.zdnscloud.com.unicom.			3599	IN	NS	f.zdnscloud.com.d.zdnscloud.com.	1669	IN	A	203.99.27.1dig @203.99.27.1 d.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @203.99.27.1 d.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 8965
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;d.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		40	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 0 msec
;; SERVER: 203.99.27.1#53(203.99.27.1)
;; WHEN: Sun Mar 06 21:13:57 ;; MSG SIZE  rcvd: 111

