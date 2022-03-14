; timestamp: 20220306T204300Z
; source id: tld-query-ni.-ns.ideay.net.ni.
; source locator: ns.ideay.net.ni.
; source IP address: 186.1.31.8
; backup point IP address: 111.42.148.76
; status: success
dig @186.1.31.8 ni. NS

; <<>> DiG 9.16.23 <<>> @186.1.31.8 ni. NS
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: SERVFAIL, id: 56118
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;ni.				IN	NS

;; Query time: 317 msec
;; SERVER: 186.1.31.8#53(186.1.31.8)
;; WHEN: Sun Mar 06 20:43:01 ;; MSG SIZE  rcvd: 31

ns.ideay.net.ni.	599	IN	A	186.1.31.8dig @186.1.31.8 ns.ideay.net.ni. AAAA

; <<>> DiG 9.16.23 <<>> @186.1.31.8 ns.ideay.net.ni. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 25133
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns.ideay.net.ni.		IN	AAAA

;; AUTHORITY SECTION:
ideay.net.ni.		899	IN	SOA	ns.ideay.net.ni. soporte.ideay.net.ni. 2022021701 3600 1200 1209600 7200

;; Query time: 2 msec
;; SERVER: 186.1.31.8#53(186.1.31.8)
;; WHEN: Sun Mar 06 20:43:01 ;; MSG SIZE  rcvd: 88

