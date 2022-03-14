; timestamp: 20220306T203109Z
; source id: tld-query-md.-nsr.dns.md.
; source locator: nsr.dns.md.
; source IP address: 213.159.210.127
; backup point IP address: 111.42.148.76
; status: success
md.			3597	IN	NS	nsa.tld.md.md.			3597	IN	NS	nsc.dns.md.md.			3597	IN	NS	nsf.dns.md.md.			3597	IN	NS	nsb.tld.md.md.			3597	IN	NS	nsr.dns.md.nsr.dns.md.		3597	IN	A	213.159.210.127dig @213.159.210.127 nsr.dns.md. AAAA

; <<>> DiG 9.16.23 <<>> @213.159.210.127 nsr.dns.md. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 54161
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;nsr.dns.md.			IN	AAAA

;; AUTHORITY SECTION:
dns.md.			1796	IN	SOA	nsa.dns.md. master.dns.md. 2021102442 43200 3600 2419200 3600

;; Query time: 4 msec
;; SERVER: 213.159.210.127#53(213.159.210.127)
;; WHEN: Sun Mar 06 20:31:13 ;; MSG SIZE  rcvd: 86

