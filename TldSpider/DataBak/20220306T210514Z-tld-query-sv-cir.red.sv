; timestamp: 20220306T210514Z
; source id: tld-query-sv.-cir.red.sv.
; source locator: cir.red.sv.
; source IP address: 168.243.254.1
; backup point IP address: 111.42.148.76
; status: success
sv.			43200	IN	NS	ns.uu.net.sv.			43200	IN	NS	ns.dns.br.sv.			43200	IN	NS	sv.cctld.authdns.ripe.net.sv.			43200	IN	NS	cir.red.sv.sv.			43200	IN	NS	sir.red.sv.sv.			43200	IN	NS	auth02.ns.uu.net.sv.			43200	IN	NS	dns-ext.nic.cr.sv.			43200	IN	NS	a.lactld.org.cir.red.sv.		3600	IN	A	168.243.254.1dig @168.243.254.1 cir.red.sv. AAAA

; <<>> DiG 9.16.23 <<>> @168.243.254.1 cir.red.sv. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 65439
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;cir.red.sv.			IN	AAAA

;; AUTHORITY SECTION:
sv.			1449	IN	SOA	sir.red.sv. lito.ibarra.sv. 2022030501 43200 3600 2592000 43200

;; Query time: 13 msec
;; SERVER: 168.243.254.1#53(168.243.254.1)
;; WHEN: Sun Mar 06 21:05:16 ;; MSG SIZE  rcvd: 91

