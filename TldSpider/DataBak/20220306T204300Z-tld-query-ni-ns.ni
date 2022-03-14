; timestamp: 20220306T204300Z
; source id: tld-query-ni.-ns.ni.
; source locator: ns.ni.
; source IP address: 165.98.1.2
; backup point IP address: 111.42.148.76
; status: success
ni.			30	IN	NS	dns-ext.nic.cr.ni.			30	IN	NS	ns.ni.ni.			30	IN	NS	ns.ideay.net.ni.ni.			30	IN	NS	ns3.ni.ni.			30	IN	NS	ns2.ni.ni.			30	IN	NS	ns.uu.net.ns.ni.			3600	IN	A	165.98.1.2dig @165.98.1.2 ns.ni. AAAA

; <<>> DiG 9.16.23 <<>> @165.98.1.2 ns.ni. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 40058
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns.ni.				IN	AAAA

;; AUTHORITY SECTION:
ni.			481	IN	SOA	ns.ni. root.ns.ni. 2021112680 60 900 604801 86400

;; Query time: 10 msec
;; SERVER: 165.98.1.2#53(165.98.1.2)
;; WHEN: Sun Mar 06 20:43:00 ;; MSG SIZE  rcvd: 75

