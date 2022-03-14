; timestamp: 20220306T202917Z
; source id: tld-query-ma.-e.tld.ma.
; source locator: e.tld.ma.
; source IP address: 105.73.80.236
; backup point IP address: 111.42.148.76
; status: success
ma.			108000	IN	NS	f.tld.ma.ma.			108000	IN	NS	ns-ma.nic.fr.ma.			108000	IN	NS	dns.inria.fr.ma.			108000	IN	NS	a.tld.ma.ma.			108000	IN	NS	d.tld.ma.ma.			108000	IN	NS	c.tld.ma.ma.			108000	IN	NS	b.tld.ma.ma.			108000	IN	NS	e.tld.ma.e.tld.ma.		3600	IN	A	105.73.80.236dig @105.73.80.236 e.tld.ma. AAAA

; <<>> DiG 9.16.23 <<>> @105.73.80.236 e.tld.ma. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 18834
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;e.tld.ma.			IN	AAAA

;; AUTHORITY SECTION:
tld.ma.			899	IN	SOA	ns1.registre.ma. ma.anrt.ma. 43 10800 3600 2419200 900

;; Query time: 4 msec
;; SERVER: 105.73.80.236#53(105.73.80.236)
;; WHEN: Sun Mar 06 20:29:36 ;; MSG SIZE  rcvd: 94

