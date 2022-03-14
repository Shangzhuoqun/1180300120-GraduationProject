; timestamp: 20220306T210955Z
; source id: tld-query-tj.-ns2.tojikiston.com.
; source locator: ns2.tojikiston.com.
; source IP address: 193.111.11.4
; backup point IP address: 111.42.148.76
; status: success
tj.			7200	IN	NS	phloem.uoregon.edu.tj.			7200	IN	NS	tj.cctld.authdns.ripe.net.tj.			7200	IN	NS	ns2.tojikiston.com.tj.			7200	IN	NS	ns1.nic.tj.ns2.tojikiston.com.	3600	IN	A	193.111.11.4dig @193.111.11.4 ns2.tojikiston.com. AAAA

; <<>> DiG 9.16.23 <<>> @193.111.11.4 ns2.tojikiston.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 55958
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns2.tojikiston.com.		IN	AAAA

;; AUTHORITY SECTION:
tojikiston.com.		1800	IN	SOA	ns.tojikiston.com. hostmaster.tojikiston.com. 2019111016 10800 3600 1209600 3600

;; Query time: 0 msec
;; SERVER: 193.111.11.4#53(193.111.11.4)
;; WHEN: Sun Mar 06 21:09:57 ;; MSG SIZE  rcvd: 97

