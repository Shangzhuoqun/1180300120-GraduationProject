; timestamp: 20220306T210514Z
; source id: tld-query-sv.-sir.red.sv.
; source locator: sir.red.sv.
; source IP address: 131.100.140.162
; backup point IP address: 111.42.148.76
; status: success
sv.			43200	IN	NS	dns-ext.nic.cr.

; <<>> DiG 9.16.23 <<>> @131.100.140.162 sir.red.sv. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 42492
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;sir.red.sv.			IN	AAAA

;; AUTHORITY SECTION:
sv.			1800	IN	SOA	sir.red.sv. lito.ibarra.sv. 2022030501 43200 3600 2592000 43200

;; Query time: 317 msec
;; SERVER: 131.100.140.162#53(131.100.140.162)
;; WHEN: Sun Mar 06 21:05:17 ;; MSG SIZE  rcvd: 87
