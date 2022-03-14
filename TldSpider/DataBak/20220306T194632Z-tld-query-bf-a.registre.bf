; timestamp: 20220306T194632Z
; source id: tld-query-bf.-a.registre.bf.
; source locator: a.registre.bf.
; source IP address: 212.52.146.50
; backup point IP address: 111.42.148.76
; status: success
bf.			3600	IN	NS	censvrns0001.ird.fr.bf.			3600	IN	NS	pch.ns.registre.bf.bf.			3600	IN	NS	a.registre.bf.bf.			3600	IN	NS	ns-bf.nic.fr.a.registre.bf.		3600	IN	A	212.52.146.50dig @212.52.146.50 a.registre.bf. AAAA

; <<>> DiG 9.16.23 <<>> @212.52.146.50 a.registre.bf. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 46947
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;a.registre.bf.			IN	AAAA

;; AUTHORITY SECTION:
registre.bf.		1800	IN	SOA	ns1.registre.bf. hostmaster.registre.bf. 2021041301 3600 3600 3600 3600

;; Query time: 6 msec
;; SERVER: 212.52.146.50#53(212.52.146.50)
;; WHEN: Sun Mar 06 19:46:33 ;; MSG SIZE  rcvd: 93

