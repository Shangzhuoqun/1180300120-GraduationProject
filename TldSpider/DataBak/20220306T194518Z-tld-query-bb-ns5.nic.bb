; timestamp: 20220306T194518Z
; source id: tld-query-bb.-ns5.nic.bb.
; source locator: ns5.nic.bb.
; source IP address: 64.119.198.193
; backup point IP address: 111.42.148.76
; status: success
dig @200.50.92.195 bb. NS

; <<>> DiG 9.16.23 <<>> @200.50.92.195 bb. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

ns5.nic.bb.		3600	IN	A	64.119.198.193dig @200.50.92.195 ns5.nic.bb. AAAA

; <<>> DiG 9.16.23 <<>> @200.50.92.195 ns5.nic.bb. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 3358
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns5.nic.bb.			IN	AAAA

;; AUTHORITY SECTION:
bb.			300	IN	SOA	dns1.easydns.com. zone.easydns.com. 1646155475 3600 600 604800 300

;; Query time: 293 msec
;; SERVER: 200.50.92.195#53(200.50.92.195)
;; WHEN: Sun Mar 06 19:45:35 ;; MSG SIZE  rcvd: 96

