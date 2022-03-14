; timestamp: 20220306T195854Z
; source id: tld-query-cy.-cynic4.dns.cy.
; source locator: cynic4.dns.cy.
; source IP address: 194.42.29.16
; backup point IP address: 111.42.148.76
; status: success
cy.			7200	IN	NS	ns4.apnic.net.cy.			7200	IN	NS	estia.ics.forth.gr.cy.			7200	IN	NS	cynic4.dns.cy.cy.			7200	IN	NS	cynic6.dns.cy.cy.			7200	IN	NS	cy-ns.anycast.pch.net.cy.			7200	IN	NS	ns31.rcode0.net.cynic4.dns.cy.		3600	IN	A	194.42.29.16dig @194.42.29.16 cynic4.dns.cy. AAAA

; <<>> DiG 9.16.23 <<>> @194.42.29.16 cynic4.dns.cy. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 3196
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;cynic4.dns.cy.			IN	AAAA

;; AUTHORITY SECTION:
dns.cy.			963	IN	SOA	cynic.dns.cy. cydns.ucy.ac.cy. 2019102129 10800 3600 1209600 86400

;; Query time: 8 msec
;; SERVER: 194.42.29.16#53(194.42.29.16)
;; WHEN: Sun Mar 06 19:58:57 ;; MSG SIZE  rcvd: 97

