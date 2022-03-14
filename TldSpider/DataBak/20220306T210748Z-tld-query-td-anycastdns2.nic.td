; timestamp: 20220306T210748Z
; source id: tld-query-td.-anycastdns2.nic.td.
; source locator: anycastdns2.nic.td.
; source IP address: 185.28.194.194
; backup point IP address: 111.42.148.76
; status: success
td.			3598	IN	NS	anycastdns2.nic.td.td.			3598	IN	NS	ns-td.afrinic.net.td.			3598	IN	NS	pch.nic.td.td.			3598	IN	NS	anycastdns1.nic.td.anycastdns2.nic.td.	600	IN	A	185.28.194.194dig @185.28.194.194 anycastdns2.nic.td. AAAA

; <<>> DiG 9.16.23 <<>> @185.28.194.194 anycastdns2.nic.td. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 1613
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;anycastdns2.nic.td.		IN	AAAA

;; AUTHORITY SECTION:
nic.td.			143	IN	SOA	nsa.planethoster.net. report.planethoster.info. 2021011320 21600 3600 604800 600

;; Query time: 184 msec
;; SERVER: 185.28.194.194#53(185.28.194.194)
;; WHEN: Sun Mar 06 21:07:53 ;; MSG SIZE  rcvd: 127

