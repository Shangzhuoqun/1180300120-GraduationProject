; timestamp: 20220306T195824Z
; source id: tld-query-cw.-ns1.uoc.cw.
; source locator: ns1.uoc.cw.
; source IP address: 198.93.177.21
; backup point IP address: 111.42.148.76
; status: success
dig @198.93.177.21 cw. NS

; <<>> DiG 9.16.23 <<>> @198.93.177.21 cw. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

ns1.uoc.cw.		3597	IN	A	198.93.177.21dig @198.93.177.21 ns1.uoc.cw. AAAA

; <<>> DiG 9.16.23 <<>> @198.93.177.21 ns1.uoc.cw. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 45492
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.uoc.cw.			IN	AAAA

;; AUTHORITY SECTION:
uoc.cw.			300	IN	SOA	ns1.bluehost.com. root.v193.vps.unifiedlayer.com. 2021121901 86400 7200 3600000 300

;; Query time: 636 msec
;; SERVER: 198.93.177.21#53(198.93.177.21)
;; WHEN: Sun Mar 06 19:58:46 ;; MSG SIZE  rcvd: 118

