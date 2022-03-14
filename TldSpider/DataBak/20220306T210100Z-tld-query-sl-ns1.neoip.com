; timestamp: 20220306T210100Z
; source id: tld-query-sl.-ns1.neoip.com.
; source locator: ns1.neoip.com.
; source IP address: 51.195.14.249
; backup point IP address: 111.42.148.76
; status: success
SL.			1800	IN	NS	ns1.neoip.com.SL.			1800	IN	NS	ns2.neoip.com.ns1.neoip.com.		2129	IN	A	51.195.14.249dig @51.195.14.249 ns1.neoip.com. AAAA

; <<>> DiG 9.16.23 <<>> @51.195.14.249 ns1.neoip.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16571
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.neoip.com.			IN	AAAA

;; AUTHORITY SECTION:
neoip.com.		300	IN	SOA	ns-cloud-e1.googledomains.com. cloud-dns-hostmaster.google.com. 1 21600 3600 259200 300

;; Query time: 316 msec
;; SERVER: 51.195.14.249#53(51.195.14.249)
;; WHEN: Sun Mar 06 21:01:01 ;; MSG SIZE  rcvd: 132

