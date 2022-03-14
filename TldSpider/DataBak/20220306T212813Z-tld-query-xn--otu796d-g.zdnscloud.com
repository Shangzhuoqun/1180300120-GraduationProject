; timestamp: 20220306T212813Z
; source id: tld-query-xn--otu796d.-g.zdnscloud.com.
; source locator: g.zdnscloud.com.
; source IP address: 42.62.2.16
; backup point IP address: 111.42.148.76
; status: success
xn--otu796d.		3598	IN	NS	i.zdnscloud.com.xn--otu796d.		3598	IN	NS	b.zdnscloud.com.xn--otu796d.		3598	IN	NS	c.zdnscloud.com.xn--otu796d.		3598	IN	NS	a.zdnscloud.com.xn--otu796d.		3598	IN	NS	f.zdnscloud.com.xn--otu796d.		3598	IN	NS	d.zdnscloud.com.xn--otu796d.		3598	IN	NS	g.zdnscloud.com.xn--otu796d.		3598	IN	NS	j.zdnscloud.com.g.zdnscloud.com.	1503	IN	A	42.62.2.16dig @42.62.2.16 g.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @42.62.2.16 g.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 7193
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;g.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		1587	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 0 msec
;; SERVER: 42.62.2.16#53(42.62.2.16)
;; WHEN: Sun Mar 06 21:28:16 ;; MSG SIZE  rcvd: 111

