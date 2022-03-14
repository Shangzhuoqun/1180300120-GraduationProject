; timestamp: 20220306T210311Z
; source id: tld-query-ss.-root.nic.ss.
; source locator: root.nic.ss.
; source IP address: 40
; backup point IP address: 111.42.148.76
; status: success
dig @185.17.236.20 ss. NS

; <<>> DiG 9.16.23 <<>> @185.17.236.20 ss. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

dig @185.17.236.20 root.nic.ss. A

; <<>> DiG 9.16.23 <<>> @185.17.236.20 root.nic.ss. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 102
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;root.nic.ss.			IN	A

;; Query time: 1800 msec
;; SERVER: 185.17.236.20#53(185.17.236.20)
;; WHEN: Sun Mar 06 21:03:48 ;; MSG SIZE  rcvd: 40

dig @185.17.236.20 root.nic.ss. AAAA

; <<>> DiG 9.16.23 <<>> @185.17.236.20 root.nic.ss. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 11426
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;root.nic.ss.			IN	AAAA

;; AUTHORITY SECTION:
ss.			1800	IN	SOA	root.ssnic.gov.ss. hostmaster.nic.ss. 2022030613 21600 3600 604800 3600

;; Query time: 971 msec
;; SERVER: 185.17.236.20#53(185.17.236.20)
;; WHEN: Sun Mar 06 21:03:49 ;; MSG SIZE  rcvd: 102

