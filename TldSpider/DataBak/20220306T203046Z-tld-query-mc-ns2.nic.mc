; timestamp: 20220306T203046Z
; source id: tld-query-mc.-ns2.nic.mc.
; source locator: ns2.nic.mc.
; source IP address: 149.5.230.10
; backup point IP address: 111.42.148.76
; status: success
mc.			3600	IN	NS	ns2.nic.mc.mc.			3600	IN	NS	mc.cctld.authdns.ripe.net.mc.			3600	IN	NS	ns1.nic.mc.ns2.nic.mc.		3588	IN	A	149.5.230.10dig @149.5.230.10 ns2.nic.mc. AAAA

; <<>> DiG 9.16.23 <<>> @149.5.230.10 ns2.nic.mc. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 33109
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns2.nic.mc.			IN	AAAA

;; AUTHORITY SECTION:
nic.mc.			1790	IN	SOA	ns1.nic.mc. root.nic.mc. 2020051410 10800 3600 86400 86400

;; Query time: 5 msec
;; SERVER: 149.5.230.10#53(149.5.230.10)
;; WHEN: Sun Mar 06 20:31:02 ;; MSG SIZE  rcvd: 84

