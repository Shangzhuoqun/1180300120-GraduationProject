; timestamp: 20220306T202823Z
; source id: tld-query-ls.-ns2.nic.ls.
; source locator: ns2.nic.ls.
; source IP address: 196.11.175.1
; backup point IP address: 111.42.148.76
; status: success
ls.			18000	IN	NS	ls-ns.anycast.pch.net.

; <<>> DiG 9.16.23 <<>> @196.11.175.1 ns2.nic.ls. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 41842
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns2.nic.ls.			IN	AAAA

;; AUTHORITY SECTION:
nic.ls.			1799	IN	SOA	ns1.nic.ls. hostmaster.nic.ls. 2022020701 86400 7200 2592000 345600

;; Query time: 162 msec
;; SERVER: 196.11.175.1#53(196.11.175.1)
;; WHEN: Sun Mar 06 20:28:25 ;; MSG SIZE  rcvd: 90
