; timestamp: 20220306T210100Z
; source id: tld-query-sl.-ns2.neoip.com.
; source locator: ns2.neoip.com.
; source IP address: 45.83.41.38
; backup point IP address: 111.42.148.76
; status: success
sl.			1800	IN	NS	ns2.neoip.com.sl.			1800	IN	NS	ns1.neoip.com.ns2.neoip.com.		2177	IN	A	45.83.41.38dig @45.83.41.38 ns2.neoip.com. AAAA

; <<>> DiG 9.16.23 <<>> @45.83.41.38 ns2.neoip.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 56282
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns2.neoip.com.			IN	AAAA

;; AUTHORITY SECTION:
neoip.com.		300	IN	SOA	ns-cloud-e1.googledomains.com. cloud-dns-hostmaster.google.com. 1 21600 3600 259200 300

;; Query time: 316 msec
;; SERVER: 45.83.41.38#53(45.83.41.38)
;; WHEN: Sun Mar 06 21:01:03 ;; MSG SIZE  rcvd: 132

