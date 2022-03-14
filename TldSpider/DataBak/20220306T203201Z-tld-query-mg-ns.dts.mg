; timestamp: 20220306T203201Z
; source id: tld-query-mg.-ns.dts.mg.
; source locator: ns.dts.mg.
; source IP address: 196.192.32.2
; backup point IP address: 111.42.148.76
; status: success
mg.			7200	IN	NS	pch.nic.mg.mg.			7200	IN	NS	ns.nic.mg.mg.			7200	IN	NS	censvrns0001.ird.fr.mg.			7200	IN	NS	ns-mg.malagasy.com.mg.			7200	IN	NS	ns.dts.mg.ns.dts.mg.		600	IN	A	196.192.32.2dig @196.192.32.2 ns.dts.mg. AAAA

; <<>> DiG 9.16.23 <<>> @196.192.32.2 ns.dts.mg. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16676
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns.dts.mg.			IN	AAAA

;; AUTHORITY SECTION:
dts.mg.			120	IN	SOA	ns.dts.mg. adminsys.dts.mg. 3030345826 21600 3600 1209600 8600

;; Query time: 737 msec
;; SERVER: 196.192.32.2#53(196.192.32.2)
;; WHEN: Sun Mar 06 20:32:03 ;; MSG SIZE  rcvd: 83

