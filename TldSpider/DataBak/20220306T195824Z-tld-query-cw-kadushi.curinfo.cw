; timestamp: 20220306T195824Z
; source id: tld-query-cw.-kadushi.curinfo.cw.
; source locator: kadushi.curinfo.cw.
; source IP address: 65.208.122.63
; backup point IP address: 111.42.148.76
; status: success
cw.			3600	IN	NS	ns2.uoc.cw.cw.			3600	IN	NS	ns3.uoc.cw.cw.			3600	IN	NS	ns01-server.curinfo.cw.cw.			3600	IN	NS	cw.cctld.authdns.ripe.net.cw.			3600	IN	NS	kadushi.curinfo.cw.cw.			3600	IN	NS	ns0.ja.net.cw.			3600	IN	NS	ns1.uoc.cw.kadushi.curinfo.cw.	3600	IN	A	65.208.122.63dig @65.208.122.63 kadushi.curinfo.cw. AAAA

; <<>> DiG 9.16.23 <<>> @65.208.122.63 kadushi.curinfo.cw. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 20651
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;kadushi.curinfo.cw.		IN	AAAA

;; AUTHORITY SECTION:
curinfo.cw.		1800	IN	SOA	ns01-server.curinfo.cw. dns.uts.cw. 2021112300 10800 3600 604800 3600

;; Query time: 638 msec
;; SERVER: 65.208.122.63#53(65.208.122.63)
;; WHEN: Sun Mar 06 19:58:51 ;; MSG SIZE  rcvd: 103

