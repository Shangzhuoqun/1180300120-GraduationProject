; timestamp: 20220306T204300Z
; source id: tld-query-ni.-ns3.ni.
; source locator: ns3.ni.
; source IP address: 190.85.232.145
; backup point IP address: 111.42.148.76
; status: success
dig @190.85.232.145 ni. NS

; <<>> DiG 9.16.23 <<>> @190.85.232.145 ni. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

ns3.ni.			3583	IN	A	190.85.232.145dig @190.85.232.145 ns3.ni. AAAA

; <<>> DiG 9.16.23 <<>> @190.85.232.145 ns3.ni. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 64289
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns3.ni.				IN	AAAA

;; AUTHORITY SECTION:
ni.			1783	IN	SOA	ns.ni. root.ns.ni. 2021112680 60 900 604801 86400

;; Query time: 3 msec
;; SERVER: 190.85.232.145#53(190.85.232.145)
;; WHEN: Sun Mar 06 20:43:18 ;; MSG SIZE  rcvd: 79

