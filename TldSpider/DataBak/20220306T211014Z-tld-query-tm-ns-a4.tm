; timestamp: 20220306T211014Z
; source id: tld-query-tm.-ns-a4.tm.
; source locator: ns-a4.tm.
; source IP address: 74.116.179.22
; backup point IP address: 111.42.148.76
; status: success
dig @74.116.179.22 tm. NS

; <<>> DiG 9.16.23 <<>> @74.116.179.22 tm. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

ns-a4.tm.		3600	IN	A	74.116.179.22dig @74.116.179.22 ns-a4.tm. AAAA

; <<>> DiG 9.16.23 <<>> @74.116.179.22 ns-a4.tm. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 9495
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns-a4.tm.			IN	AAAA

;; AUTHORITY SECTION:
tm.			1800	IN	SOA	ns1.communitydns.net. admin.nic.tm. 1646266321 3600 1800 3600000 3600

;; Query time: 347 msec
;; SERVER: 74.116.179.22#53(74.116.179.22)
;; WHEN: Sun Mar 06 21:10:42 ;; MSG SIZE  rcvd: 103

