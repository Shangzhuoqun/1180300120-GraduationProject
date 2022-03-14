; timestamp: 20220306T203201Z
; source id: tld-query-mg.-ns.nic.mg.
; source locator: ns.nic.mg.
; source IP address: 196.192.42.153
; backup point IP address: 111.42.148.76
; status: success
mg.			7200	IN	NS	ns-mg.malagasy.com.mg.			7200	IN	NS	pch.nic.mg.mg.			7200	IN	NS	ns.dts.mg.mg.			7200	IN	NS	censvrns0001.ird.fr.mg.			7200	IN	NS	ns.nic.mg.ns.nic.mg.		600	IN	A	196.192.42.153dig @196.192.42.153 ns.nic.mg. AAAA

; <<>> DiG 9.16.23 <<>> @196.192.42.153 ns.nic.mg. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16328
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns.nic.mg.			IN	AAAA

;; AUTHORITY SECTION:
nic.mg.			598	IN	SOA	ns.nic.mg. hostmaster.ns.nic.mg. 2016082211 3600 1800 3600000 86400

;; Query time: 212 msec
;; SERVER: 196.192.42.153#53(196.192.42.153)
;; WHEN: Sun Mar 06 20:32:05 ;; MSG SIZE  rcvd: 85

