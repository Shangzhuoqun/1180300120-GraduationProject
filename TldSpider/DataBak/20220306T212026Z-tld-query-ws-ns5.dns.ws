; timestamp: 20220306T212026Z
; source id: tld-query-ws.-ns5.dns.ws.
; source locator: ns5.dns.ws.
; source IP address: 64.70.19.70
; backup point IP address: 111.42.148.76
; status: success
ws.			3347	IN	NS	ns2.dns.ws.ws.			3347	IN	NS	us3.dns.ws.ws.			3347	IN	NS	ns5.dns.ws.ws.			3347	IN	NS	a.dns.ws.ws.			3347	IN	NS	us4.dns.ws.ws.			3347	IN	NS	s.dns.ws.ns5.dns.ws.		1244	IN	A	64.70.19.70dig @64.70.19.70 ns5.dns.ws. AAAA

; <<>> DiG 9.16.23 <<>> @64.70.19.70 ns5.dns.ws. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 41288
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns5.dns.ws.			IN	AAAA

;; AUTHORITY SECTION:
dns.ws.			1800	IN	SOA	ns2.dns.ws. hostmaster.ns2.dns.ws. 2022011401 10800 3600 604800 86400

;; Query time: 15 msec
;; SERVER: 64.70.19.70#53(64.70.19.70)
;; WHEN: Sun Mar 06 21:20:28 ;; MSG SIZE  rcvd: 90

