; timestamp: 20220306T203109Z
; source id: tld-query-md.-nsa.tld.md.
; source locator: nsa.tld.md.
; source IP address: 185.108.181.191
; backup point IP address: 111.42.148.76
; status: success
md.			3600	IN	NS	nsc.dns.md.md.			3600	IN	NS	nsb.tld.md.md.			3600	IN	NS	nsf.dns.md.md.			3600	IN	NS	nsa.tld.md.md.			3600	IN	NS	nsr.dns.md.nsa.tld.md.		3599	IN	A	185.108.181.191dig @185.108.181.191 nsa.tld.md. AAAA

; <<>> DiG 9.16.23 <<>> @185.108.181.191 nsa.tld.md. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 30216
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;nsa.tld.md.			IN	AAAA

;; AUTHORITY SECTION:
tld.md.			1799	IN	SOA	nsa.dns.md. master.dns.md. 2021102435 21600 3600 1209600 3600

;; Query time: 6 msec
;; SERVER: 185.108.181.191#53(185.108.181.191)
;; WHEN: Sun Mar 06 20:31:10 ;; MSG SIZE  rcvd: 90

