; timestamp: 20220306T212813Z
; source id: tld-query-xn--otu796d.-f.zdnscloud.com.
; source locator: f.zdnscloud.com.
; source IP address: 114.67.16.204
; backup point IP address: 111.42.148.76
; status: success
xn--otu796d.		3598	IN	NS	c.zdnscloud.com.xn--otu796d.		3598	IN	NS	g.zdnscloud.com.xn--otu796d.		3598	IN	NS	a.zdnscloud.com.xn--otu796d.		3598	IN	NS	b.zdnscloud.com.xn--otu796d.		3598	IN	NS	f.zdnscloud.com.xn--otu796d.		3598	IN	NS	j.zdnscloud.com.xn--otu796d.		3598	IN	NS	d.zdnscloud.com.xn--otu796d.		3598	IN	NS	i.zdnscloud.com.f.zdnscloud.com.	1001	IN	A	114.67.16.204dig @114.67.16.204 f.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @114.67.16.204 f.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 30111
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;f.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		1105	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 64 msec
;; SERVER: 114.67.16.204#53(114.67.16.204)
;; WHEN: Sun Mar 06 21:28:16 ;; MSG SIZE  rcvd: 111

