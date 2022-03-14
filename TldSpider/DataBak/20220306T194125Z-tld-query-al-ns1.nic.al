; timestamp: 20220306T194125Z
; source id: tld-query-al.-ns1.nic.al.
; source locator: ns1.nic.al.
; source IP address: 194.1.149.230
; backup point IP address: 111.42.148.76
; status: success
al.			1640	IN	NS	ns1.nic.al.al.			1640	IN	NS	nsx.nic.al.al.			1640	IN	NS	rip.psg.com.al.			1640	IN	NS	munnari.oz.au.ns1.nic.al.		2155	IN	A	194.1.149.230dig @194.1.149.230 ns1.nic.al. AAAA

; <<>> DiG 9.16.23 <<>> @194.1.149.230 ns1.nic.al. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 60904
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.nic.al.			IN	AAAA

;; AUTHORITY SECTION:
nic.al.			356	IN	SOA	ns1.nic.al. domain.nic.al. 2017030901 86400 1800 604800 3600

;; Query time: 3 msec
;; SERVER: 194.1.149.230#53(194.1.149.230)
;; WHEN: Sun Mar 06 19:41:25 ;; MSG SIZE  rcvd: 82

