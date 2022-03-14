; timestamp: 20220306T203734Z
; source id: tld-query-mm.-a.nic.net.mm.
; source locator: a.nic.net.mm.
; source IP address: 37.209.192.4
; backup point IP address: 111.42.148.76
; status: success
mm.			3600	IN	NS	b.nic.net.mm.mm.			3600	IN	NS	d.nic.net.mm.mm.			3600	IN	NS	c.nic.net.mm.mm.			3600	IN	NS	a.nic.net.mm.a.nic.net.mm.		3600	IN	A	37.209.192.4dig @37.209.192.4 a.nic.net.mm. AAAA

; <<>> DiG 9.16.23 <<>> @37.209.192.4 a.nic.net.mm. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 55203
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;a.nic.net.mm.			IN	AAAA

;; AUTHORITY SECTION:
nic.net.mm.		1799	IN	SOA	ns3.nic.net.mm. hostmaster.nic.net.mm. 2019091800 7200 1800 1209600 3600

;; Query time: 2 msec
;; SERVER: 37.209.192.4#53(37.209.192.4)
;; WHEN: Sun Mar 06 20:37:35 ;; MSG SIZE  rcvd: 92

