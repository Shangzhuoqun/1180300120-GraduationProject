; timestamp: 20220306T194400Z
; source id: tld-query-aw.-aw01.setarnet.aw.
; source locator: aw01.setarnet.aw.
; source IP address: 201.229.0.26
; backup point IP address: 111.42.148.76
; status: success
aw.			172800	IN	NS	ns3.dns.aw.aw.			172800	IN	NS	aw01.setarnet.aw.aw.			172800	IN	NS	ns1.dns.aw.aw.			172800	IN	NS	ns2.dns.aw.aw.			172800	IN	NS	aw02.setarnet.aw.aw01.setarnet.aw.	3600	IN	A	201.229.0.26dig @201.229.0.26 aw01.setarnet.aw. AAAA

; <<>> DiG 9.16.23 <<>> @201.229.0.26 aw01.setarnet.aw. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 34472
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;aw01.setarnet.aw.		IN	AAAA

;; AUTHORITY SECTION:
setarnet.aw.		1799	IN	SOA	intns.setarnet.aw. hostmaster.setarnet.aw. 2021121301 1800 1800 604800 3600

;; Query time: 12 msec
;; SERVER: 201.229.0.26#53(201.229.0.26)
;; WHEN: Sun Mar 06 19:44:03 ;; MSG SIZE  rcvd: 98

