; timestamp: 20220306T201220Z
; source id: tld-query-gp.-ns1.nic.gp.
; source locator: ns1.nic.gp.
; source IP address: 193.218.114.2
; backup point IP address: 111.42.148.76
; status: success
gp.			86400	IN	NS	ns-gp.nic.fr.gp.			86400	IN	NS	a.lactld.org.gp.			86400	IN	NS	ns2.nic.gp.gp.			86400	IN	NS	gp.cctld.authdns.ripe.net.gp.			86400	IN	NS	ns1.nic.gp.ns1.nic.gp.		3600	IN	A	193.218.114.2dig @193.218.114.2 ns1.nic.gp. AAAA

; <<>> DiG 9.16.23 <<>> @193.218.114.2 ns1.nic.gp. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 72
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns1.nic.gp.			IN	AAAA

;; AUTHORITY SECTION:
nic.gp.			1800	IN	SOA	ns1.nic.gp. jbroom.nic.gp. 2022022202 172800 3600 1728000 86400

;; Query time: 6 msec
;; SERVER: 193.218.114.2#53(193.218.114.2)
;; WHEN: Sun Mar 06 20:12:24 ;; MSG SIZE  rcvd: 82

