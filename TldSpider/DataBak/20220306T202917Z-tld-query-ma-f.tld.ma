; timestamp: 20220306T202917Z
; source id: tld-query-ma.-f.tld.ma.
; source locator: f.tld.ma.
; source IP address: 41.214.240.4
; backup point IP address: 111.42.148.76
; status: success
ma.			108000	IN	NS	a.tld.ma.ma.			108000	IN	NS	ns-ma.nic.fr.ma.			108000	IN	NS	f.tld.ma.ma.			108000	IN	NS	e.tld.ma.ma.			108000	IN	NS	b.tld.ma.ma.			108000	IN	NS	c.tld.ma.ma.			108000	IN	NS	d.tld.ma.ma.			108000	IN	NS	dns.inria.fr.f.tld.ma.		3600	IN	A	41.214.240.4dig @41.214.240.4 f.tld.ma. AAAA

; <<>> DiG 9.16.23 <<>> @41.214.240.4 f.tld.ma. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 47082
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;f.tld.ma.			IN	AAAA

;; AUTHORITY SECTION:
tld.ma.			900	IN	SOA	ns1.registre.ma. ma.anrt.ma. 43 10800 3600 2419200 900

;; Query time: 1943 msec
;; SERVER: 41.214.240.4#53(41.214.240.4)
;; WHEN: Sun Mar 06 20:29:38 ;; MSG SIZE  rcvd: 94

