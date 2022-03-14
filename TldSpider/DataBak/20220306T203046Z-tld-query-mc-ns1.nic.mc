; timestamp: 20220306T203046Z
; source id: tld-query-mc.-ns1.nic.mc.
; source locator: ns1.nic.mc.
; source IP address: 88.209.82.210
; backup point IP address: 111.42.148.76
; status: success
mc.			3600	IN	NS	mc.cctld.authdns.ripe.net.mc.			3600	IN	NS	ns2.nic.mc.mc.			3600	IN	NS	ns1.nic.mc.ns1.nic.mc.		3600	IN	A	88.209.82.210dig @88.209.82.210 ns1.nic.mc. AAAA

; <<>> DiG 9.16.23 <<>> @88.209.82.210 ns1.nic.mc. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 39593
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.nic.mc.			IN	AAAA

;; AUTHORITY SECTION:
nic.mc.			1800	IN	SOA	ns1.nic.mc. root.nic.mc. 2020051410 10800 3600 86400 86400

;; Query time: 529 msec
;; SERVER: 88.209.82.210#53(88.209.82.210)
;; WHEN: Sun Mar 06 20:30:50 ;; MSG SIZE  rcvd: 80

