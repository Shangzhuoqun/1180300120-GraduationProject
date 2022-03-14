; timestamp: 20220306T203734Z
; source id: tld-query-mm.-d.nic.net.mm.
; source locator: d.nic.net.mm.
; source IP address: 37.209.198.4
; backup point IP address: 111.42.148.76
; status: success
mm.			3599	IN	NS	b.nic.net.mm.mm.			3599	IN	NS	a.nic.net.mm.mm.			3599	IN	NS	d.nic.net.mm.mm.			3599	IN	NS	c.nic.net.mm.d.nic.net.mm.		3599	IN	A	37.209.198.4dig @37.209.198.4 d.nic.net.mm. AAAA

; <<>> DiG 9.16.23 <<>> @37.209.198.4 d.nic.net.mm. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 37106
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;d.nic.net.mm.			IN	AAAA

;; AUTHORITY SECTION:
nic.net.mm.		1798	IN	SOA	ns3.nic.net.mm. hostmaster.nic.net.mm. 2019091800 7200 1800 1209600 3600

;; Query time: 4 msec
;; SERVER: 37.209.198.4#53(37.209.198.4)
;; WHEN: Sun Mar 06 20:37:36 ;; MSG SIZE  rcvd: 92

