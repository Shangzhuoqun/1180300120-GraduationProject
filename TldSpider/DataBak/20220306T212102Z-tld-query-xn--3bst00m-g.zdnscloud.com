; timestamp: 20220306T212102Z
; source id: tld-query-xn--3bst00m.-g.zdnscloud.com.
; source locator: g.zdnscloud.com.
; source IP address: 42.62.2.16
; backup point IP address: 111.42.148.76
; status: success
xn--3bst00m.		3598	IN	NS	a.zdnscloud.com.xn--3bst00m.		3598	IN	NS	j.zdnscloud.com.xn--3bst00m.		3598	IN	NS	d.zdnscloud.com.xn--3bst00m.		3598	IN	NS	f.zdnscloud.com.xn--3bst00m.		3598	IN	NS	g.zdnscloud.com.xn--3bst00m.		3598	IN	NS	i.zdnscloud.com.xn--3bst00m.		3598	IN	NS	c.zdnscloud.com.xn--3bst00m.		3598	IN	NS	b.zdnscloud.com.g.zdnscloud.com.	1935	IN	A	42.62.2.16dig @42.62.2.16 g.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @42.62.2.16 g.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 51256
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;g.zdnscloud.com.		IN	AAAA

;; AUTHORITY SECTION:
zdnscloud.com.		170	IN	SOA	dns1.zdnscloud.info. mail.knet.cn. 20 3600 3600 3600 900

;; Query time: 15 msec
;; SERVER: 42.62.2.16#53(42.62.2.16)
;; WHEN: Sun Mar 06 21:21:04 ;; MSG SIZE  rcvd: 111

