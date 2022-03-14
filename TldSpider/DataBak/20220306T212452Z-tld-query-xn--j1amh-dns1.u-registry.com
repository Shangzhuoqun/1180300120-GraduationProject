; timestamp: 20220306T212452Z
; source id: tld-query-xn--j1amh.-dns1.u-registry.com.
; source locator: dns1.u-registry.com.
; source IP address: 91.231.86.11
; backup point IP address: 111.42.148.76
; status: success
xn--j1amh.		3596	IN	NS	dns1.u-registry.com.xn--j1amh.		3596	IN	NS	tier1.num.net.ua.xn--j1amh.		3596	IN	NS	dns3.dotukr.com.xn--j1amh.		3596	IN	NS	dns2.u-registry.net.xn--j1amh.		3596	IN	NS	nsi.uanic.net.dns1.u-registry.com.	1800	IN	A	91.231.86.11dig @173.208.218.43 dns1.u-registry.com. AAAA

; <<>> DiG 9.16.23 <<>> @173.208.218.43 dns1.u-registry.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 5830
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;dns1.u-registry.com.		IN	AAAA

;; AUTHORITY SECTION:
u-registry.com.		970	IN	SOA	ns1.ukrnames.com. info.ukrnames.com. 2021062328 43200 7200 1209600 1800

;; Query time: 10 msec
;; SERVER: 173.208.218.43#53(173.208.218.43)
;; WHEN: Sun Mar 06 21:25:00 ;; MSG SIZE  rcvd: 102

