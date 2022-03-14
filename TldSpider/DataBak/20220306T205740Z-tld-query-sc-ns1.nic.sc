; timestamp: 20220306T205740Z
; source id: tld-query-sc.-ns1.nic.sc.
; source locator: ns1.nic.sc.
; source IP address: 41.86.57.54
; backup point IP address: 111.42.148.76
; status: success
dig @41.86.57.54 sc. NS

; <<>> DiG 9.16.23 <<>> @41.86.57.54 sc. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

ns1.nic.sc.		2212	IN	A	41.86.57.54dig @41.86.57.54 ns1.nic.sc. AAAA

; <<>> DiG 9.16.23 <<>> @41.86.57.54 ns1.nic.sc. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16465
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.nic.sc.			IN	AAAA

;; AUTHORITY SECTION:
nic.sc.			599	IN	SOA	ns49.domaincontrol.com. dns.jomax.net. 2021020300 28800 7200 604800 600

;; Query time: 0 msec
;; SERVER: 41.86.57.54#53(41.86.57.54)
;; WHEN: Sun Mar 06 20:57:59 ;; MSG SIZE  rcvd: 110

