; timestamp: 20220306T211014Z
; source id: tld-query-tm.-ns-a3.tm.
; source locator: ns-a3.tm.
; source IP address: 74.116.178.22
; backup point IP address: 111.42.148.76
; status: success
tm.			86400	IN	NS	ns-a1.tm.

; <<>> DiG 9.16.23 <<>> @74.116.178.22 ns-a3.tm. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 50445
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns-a3.tm.			IN	AAAA

;; AUTHORITY SECTION:
tm.			1800	IN	SOA	ns1.communitydns.net. admin.nic.tm. 1646570521 3600 1800 3600000 3600

;; Query time: 485 msec
;; SERVER: 74.116.178.22#53(74.116.178.22)
;; WHEN: Sun Mar 06 21:10:25 ;; MSG SIZE  rcvd: 103
