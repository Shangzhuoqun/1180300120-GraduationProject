; timestamp: 20220306T203712Z
; source id: tld-query-mk.-tld1.marnet.mk.
; source locator: tld1.marnet.mk.
; source IP address: 194.149.137.168
; backup point IP address: 111.42.148.76
; status: success
mk.			3600	IN	NS	dns-mk.univie.ac.at.mk.			3600	IN	NS	tld1.marnet.mk.mk.			3600	IN	NS	ns2.arnes.si.mk.			3600	IN	NS	d.ext.nic.cz.tld1.marnet.mk.		3515	IN	A	194.149.137.168dig @194.149.137.168 tld1.marnet.mk. AAAA

; <<>> DiG 9.16.23 <<>> @194.149.137.168 tld1.marnet.mk. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 50614
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;tld1.marnet.mk.			IN	AAAA

;; AUTHORITY SECTION:
marnet.mk.		1800	IN	SOA	nsg.mio.gov.mk. hostmaster.mio.gov.mk. 80 1800 600 604800 14400

;; Query time: 646 msec
;; SERVER: 194.149.137.168#53(194.149.137.168)
;; WHEN: Sun Mar 06 20:37:16 ;; MSG SIZE  rcvd: 102

