; timestamp: 20220306T194653Z
; source id: tld-query-bi.-ns1.nic.bi.
; source locator: ns1.nic.bi.
; source IP address: 196.2.12.205
; backup point IP address: 111.42.148.76
; status: success
bi.			86400	IN	NS	ns.nic.bi.bi.			86400	IN	NS	anyns.nic.bi.bi.			86400	IN	NS	ns1.nic.bi.bi.			86400	IN	NS	ns-bi.afrinic.net.bi.			86400	IN	NS	bi.cctld.authdns.ripe.net.ns1.nic.bi.		1649	IN	A	196.2.12.205dig @196.2.12.205 ns1.nic.bi. AAAA

; <<>> DiG 9.16.23 <<>> @196.2.12.205 ns1.nic.bi. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 46386
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.nic.bi.			IN	AAAA

;; AUTHORITY SECTION:
nic.bi.			488	IN	SOA	ns.nic.bi. registry.nic.bi. 2021062524 21600 3600 604800 86400

;; Query time: 3 msec
;; SERVER: 196.2.12.205#53(196.2.12.205)
;; WHEN: Sun Mar 06 19:46:56 ;; MSG SIZE  rcvd: 87

