; timestamp: 20220306T203109Z
; source id: tld-query-md.-nsb.tld.md.
; source locator: nsb.tld.md.
; source IP address: 185.108.181.192
; backup point IP address: 111.42.148.76
; status: success
md.			518400	IN	NS	nsb.tld.md.md.			518400	IN	NS	nsc.dns.md.md.			518400	IN	NS	nsr.dns.md.md.			518400	IN	NS	nsa.tld.md.md.			518400	IN	NS	nsf.dns.md.nsb.tld.md.		599	IN	A	185.108.181.192dig @185.108.181.192 nsb.tld.md. AAAA

; <<>> DiG 9.16.23 <<>> @185.108.181.192 nsb.tld.md. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 60606
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;nsb.tld.md.			IN	AAAA

;; AUTHORITY SECTION:
tld.md.			1799	IN	SOA	nsa.dns.md. master.dns.md. 2021102435 21600 3600 1209600 3600

;; Query time: 230 msec
;; SERVER: 185.108.181.192#53(185.108.181.192)
;; WHEN: Sun Mar 06 20:31:11 ;; MSG SIZE  rcvd: 90

