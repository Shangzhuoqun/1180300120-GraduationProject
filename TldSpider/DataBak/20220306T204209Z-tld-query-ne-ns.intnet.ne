; timestamp: 20220306T204209Z
; source id: tld-query-ne.-ns.intnet.ne.
; source locator: ns.intnet.ne.
; source IP address: 41.138.54.10
; backup point IP address: 111.42.148.76
; status: success
ne.			86400	IN	NS	ne.cctld.authdns.ripe.net.ne.			86400	IN	NS	ns-ne.afrinic.net.ne.			86400	IN	NS	bow.rain.fr.ne.			86400	IN	NS	ns.intnet.ne.ns.intnet.ne.		3600	IN	A	41.138.54.10dig @41.138.54.10 ns.intnet.ne. AAAA

; <<>> DiG 9.16.23 <<>> @41.138.54.10 ns.intnet.ne. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 32074
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns.intnet.ne.			IN	AAAA

;; AUTHORITY SECTION:
intnet.ne.		1054	IN	SOA	ns.intnet.ne. root.intnet.ne. 2017022600 21600 7200 2419200 86400

;; Query time: 10 msec
;; SERVER: 41.138.54.10#53(41.138.54.10)
;; WHEN: Sun Mar 06 20:42:11 ;; MSG SIZE  rcvd: 82

