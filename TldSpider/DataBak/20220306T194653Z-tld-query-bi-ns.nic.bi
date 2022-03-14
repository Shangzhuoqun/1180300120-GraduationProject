; timestamp: 20220306T194653Z
; source id: tld-query-bi.-ns.nic.bi.
; source locator: ns.nic.bi.
; source IP address: 196.2.8.205
; backup point IP address: 111.42.148.76
; status: success
bi.			86400	IN	NS	ns.nic.bi.bi.			86400	IN	NS	ns-bi.afrinic.net.bi.			86400	IN	NS	anyns.nic.bi.bi.			86400	IN	NS	ns1.nic.bi.bi.			86400	IN	NS	bi.cctld.authdns.ripe.net.ns.nic.bi.		3600	IN	A	196.2.8.205dig @196.2.8.205 ns.nic.bi. AAAA

; <<>> DiG 9.16.23 <<>> @196.2.8.205 ns.nic.bi. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 65199
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns.nic.bi.			IN	AAAA

;; AUTHORITY SECTION:
nic.bi.			1800	IN	SOA	ns.nic.bi. registry.nic.bi. 2021062524 21600 3600 604800 86400

;; Query time: 6 msec
;; SERVER: 196.2.8.205#53(196.2.8.205)
;; WHEN: Sun Mar 06 19:46:55 ;; MSG SIZE  rcvd: 83

