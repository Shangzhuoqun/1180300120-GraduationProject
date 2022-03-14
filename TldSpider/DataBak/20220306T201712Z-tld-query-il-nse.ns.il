; timestamp: 20220306T201712Z
; source id: tld-query-il.-nse.ns.il.
; source locator: nse.ns.il.
; source IP address: 192.115.4.235
; backup point IP address: 111.42.148.76
; status: success
il.			3598	IN	NS	ns1.ns.il.il.			3598	IN	NS	nsa.ns.il.il.			3598	IN	NS	nsb.ns.il.il.			3598	IN	NS	ilns.ilan.net.il.il.			3598	IN	NS	ns4.ns.il.il.			3598	IN	NS	ns3.ns.il.il.			3598	IN	NS	lookup.iucc.ac.il.il.			3598	IN	NS	nse.ns.il.nse.ns.il.		3600	IN	A	192.115.4.235dig @192.115.4.235 nse.ns.il. AAAA

; <<>> DiG 9.16.23 <<>> @192.115.4.235 nse.ns.il. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 20826
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;nse.ns.il.			IN	AAAA

;; AUTHORITY SECTION:
il.			1800	IN	SOA	nsa.ns.il. hostmaster.isoc.org.il. 2022030600 3600 1800 2419200 86400

;; Query time: 122 msec
;; SERVER: 192.115.4.235#53(192.115.4.235)
;; WHEN: Sun Mar 06 20:17:15 ;; MSG SIZE  rcvd: 98

