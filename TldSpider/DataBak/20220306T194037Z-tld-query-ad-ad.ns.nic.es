; timestamp: 20220306T194037Z
; source id: tld-query-ad.-ad.ns.nic.es.
; source locator: ad.ns.nic.es.
; source IP address: 194.69.254.15
; backup point IP address: 111.42.148.76
; status: success
ad.			900	IN	NS	dnsm.ad.ad.			900	IN	NS	ad.ns.nic.es.ad.			900	IN	NS	ad.cctld.authdns.ripe.net.ad.			900	IN	NS	ns3.nic.fr.ad.			900	IN	NS	dnsc.ad.ad.ns.nic.es.		3600	IN	A	194.69.254.15dig @194.69.254.15 ad.ns.nic.es. AAAA

; <<>> DiG 9.16.23 <<>> @194.69.254.15 ad.ns.nic.es. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 45243
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ad.ns.nic.es.			IN	AAAA

;; AUTHORITY SECTION:
nic.es.			1800	IN	SOA	a.nic.es. hostmaster.red.es. 2021081301 7200 1800 1209600 7200

;; Query time: 281 msec
;; SERVER: 194.69.254.15#53(194.69.254.15)
;; WHEN: Sun Mar 06 19:40:39 ;; MSG SIZE  rcvd: 94

