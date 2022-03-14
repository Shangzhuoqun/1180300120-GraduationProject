; timestamp: 20220306T203201Z
; source id: tld-query-mg.-ns-mg.malagasy.com.
; source locator: ns-mg.malagasy.com.
; source IP address: 87.98.132.231
; backup point IP address: 111.42.148.76
; status: success
mg.			7200	IN	NS	ns-mg.malagasy.com.mg.			7200	IN	NS	ns.dts.mg.mg.			7200	IN	NS	censvrns0001.ird.fr.mg.			7200	IN	NS	pch.nic.mg.mg.			7200	IN	NS	ns.nic.mg.ns-mg.malagasy.com.	3600	IN	A	87.98.132.231dig @87.98.132.231 ns-mg.malagasy.com. AAAA

; <<>> DiG 9.16.23 <<>> @87.98.132.231 ns-mg.malagasy.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 50700
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns-mg.malagasy.com.		IN	AAAA

;; AUTHORITY SECTION:
malagasy.com.		1800	IN	SOA	ns1.mg.tambazotra.net. postmaster.malagasy.com. 2022030401 10800 3600 604800 3600

;; Query time: 988 msec
;; SERVER: 87.98.132.231#53(87.98.132.231)
;; WHEN: Sun Mar 06 20:32:12 ;; MSG SIZE  rcvd: 115

