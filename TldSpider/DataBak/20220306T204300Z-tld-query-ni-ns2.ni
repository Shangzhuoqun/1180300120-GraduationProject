; timestamp: 20220306T204300Z
; source id: tld-query-ni.-ns2.ni.
; source locator: ns2.ni.
; source IP address: 200.9.187.2
; backup point IP address: 111.42.148.76
; status: success
ni.			30	IN	NS	ns.ideay.net.ni.ni.			30	IN	NS	ns.ni.ni.			30	IN	NS	ns2.ni.ni.			30	IN	NS	dns-ext.nic.cr.ni.			30	IN	NS	ns3.ni.ni.			30	IN	NS	ns.uu.net.ns2.ni.			3598	IN	A	200.9.187.2dig @200.9.187.2 ns2.ni. AAAA

; <<>> DiG 9.16.23 <<>> @200.9.187.2 ns2.ni. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 8901
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns2.ni.				IN	AAAA

;; AUTHORITY SECTION:
ni.			1799	IN	SOA	ns.ni. root.ns.ni. 2021112680 60 900 604801 86400

;; Query time: 21 msec
;; SERVER: 200.9.187.2#53(200.9.187.2)
;; WHEN: Sun Mar 06 20:43:02 ;; MSG SIZE  rcvd: 79

