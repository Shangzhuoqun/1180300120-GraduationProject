; timestamp: 20220306T212026Z
; source id: tld-query-ws.-us4.dns.ws.
; source locator: us4.dns.ws.
; source IP address: 64.70.78.80
; backup point IP address: 111.42.148.76
; status: success
ws.			3346	IN	NS	s.dns.ws.

; <<>> DiG 9.16.23 <<>> @64.70.78.80 us4.dns.ws. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 27341
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;us4.dns.ws.			IN	AAAA

;; AUTHORITY SECTION:
dns.ws.			1800	IN	SOA	ns2.dns.ws. hostmaster.ns2.dns.ws. 2022011401 10800 3600 604800 86400

;; Query time: 100 msec
;; SERVER: 64.70.78.80#53(64.70.78.80)
;; WHEN: Sun Mar 06 21:20:29 ;; MSG SIZE  rcvd: 90
