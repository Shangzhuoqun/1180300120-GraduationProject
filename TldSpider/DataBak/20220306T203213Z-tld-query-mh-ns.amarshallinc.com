; timestamp: 20220306T203213Z
; source id: tld-query-mh.-ns.amarshallinc.com.
; source locator: ns.amarshallinc.com.
; source IP address: 71.163.249.97
; backup point IP address: 111.42.148.76
; status: success
mh.			28800	IN	NS	ns.amarshallinc.com.mh.			28800	IN	NS	ns.nta.mh.ns.amarshallinc.com.	3600	IN	A	71.163.249.97dig @71.163.249.97 ns.amarshallinc.com. AAAA

; <<>> DiG 9.16.23 <<>> @71.163.249.97 ns.amarshallinc.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 60963
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns.amarshallinc.com.		IN	AAAA

;; AUTHORITY SECTION:
amarshallinc.com.	1800	IN	SOA	ns.amarshallinc.com. support.amarshallinc.com. 2020081502 3600 1800 14400 3600

;; Query time: 1083 msec
;; SERVER: 71.163.249.97#53(71.163.249.97)
;; WHEN: Sun Mar 06 20:32:22 ;; MSG SIZE  rcvd: 92

