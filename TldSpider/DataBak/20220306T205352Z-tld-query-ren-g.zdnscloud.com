; timestamp: 20220306T205352Z
; source id: tld-query-ren.-g.zdnscloud.com.
; source locator: g.zdnscloud.com.
; source IP address: 42.62.2.16
; backup point IP address: 111.42.148.76
; status: success
ren.			3599	IN	NS	b.zdnscloud.com.ren.			3599	IN	NS	i.zdnscloud.com.ren.			3599	IN	NS	f.zdnscloud.com.ren.			3599	IN	NS	d.zdnscloud.com.ren.			3599	IN	NS	j.zdnscloud.com.ren.			3599	IN	NS	c.zdnscloud.com.ren.			3599	IN	NS	a.zdnscloud.com.ren.			3599	IN	NS	g.zdnscloud.com.g.zdnscloud.com.	854	IN	A	42.62.2.16dig @42.62.2.16 g.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @42.62.2.16 g.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 41669
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;g.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		1800	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 8 msec
;; SERVER: 42.62.2.16#53(42.62.2.16)
;; WHEN: Sun Mar 06 20:53:54 ;; MSG SIZE  rcvd: 111

