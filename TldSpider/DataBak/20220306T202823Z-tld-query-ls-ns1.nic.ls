; timestamp: 20220306T202823Z
; source id: tld-query-ls.-ns1.nic.ls.
; source locator: ns1.nic.ls.
; source IP address: 196.43.249.1
; backup point IP address: 111.42.148.76
; status: success
ls.			18000	IN	NS	ns-ls.afrinic.net.ls.			18000	IN	NS	ns2.nic.ls.ls.			18000	IN	NS	ls-ns.anycast.pch.net.ls.			18000	IN	NS	ns1.nic.ls.ns1.nic.ls.		3600	IN	A	196.43.249.1dig @196.43.249.1 ns1.nic.ls. AAAA

; <<>> DiG 9.16.23 <<>> @196.43.249.1 ns1.nic.ls. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 6353
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.nic.ls.			IN	AAAA

;; AUTHORITY SECTION:
nic.ls.			1800	IN	SOA	ns1.nic.ls. hostmaster.nic.ls. 2022020701 86400 7200 2592000 345600

;; Query time: 667 msec
;; SERVER: 196.43.249.1#53(196.43.249.1)
;; WHEN: Sun Mar 06 20:28:24 ;; MSG SIZE  rcvd: 86

