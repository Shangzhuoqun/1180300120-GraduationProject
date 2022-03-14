; timestamp: 20220306T204942Z
; source id: tld-query-pl.-e-dns.pl.
; source locator: e-dns.pl.
; source IP address: 46.28.245.82
; backup point IP address: 111.42.148.76
; status: success
pl.			3598	IN	NS	e-dns.pl.pl.			3598	IN	NS	a-dns.pl.pl.			3598	IN	NS	f-dns.pl.pl.			3598	IN	NS	i-dns.pl.pl.			3598	IN	NS	h-dns.pl.pl.			3598	IN	NS	b-dns.pl.pl.			3598	IN	NS	c-dns.pl.pl.			3598	IN	NS	g-dns.pl.pl.			3598	IN	NS	d-dns.pl.e-dns.pl.		2159	IN	A	46.28.245.82dig @46.28.245.82 e-dns.pl. AAAA

; <<>> DiG 9.16.23 <<>> @46.28.245.82 e-dns.pl. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 7225
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;e-dns.pl.			IN	AAAA

;; AUTHORITY SECTION:
pl.			1800	IN	SOA	a-dns.pl. dnsmaster.nask.pl. 1646499807 900 300 2592000 3600

;; Query time: 8 msec
;; SERVER: 46.28.245.82#53(46.28.245.82)
;; WHEN: Sun Mar 06 20:49:44 ;; MSG SIZE  rcvd: 94

