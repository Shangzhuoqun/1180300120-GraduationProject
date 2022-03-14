; timestamp: 20220306T195824Z
; source id: tld-query-cw.-ns3.uoc.cw.
; source locator: ns3.uoc.cw.
; source IP address: 200.26.199.99
; backup point IP address: 111.42.148.76
; status: success
cw.			3600	IN	NS	ns0.ja.net.cw.			3600	IN	NS	ns1.uoc.cw.cw.			3600	IN	NS	ns01-server.curinfo.cw.cw.			3600	IN	NS	kadushi.curinfo.cw.cw.			3600	IN	NS	ns3.uoc.cw.cw.			3600	IN	NS	ns2.uoc.cw.cw.			3600	IN	NS	cw.cctld.authdns.ripe.net.ns3.uoc.cw.		3600	IN	A	200.26.199.99dig @200.26.199.99 ns3.uoc.cw. AAAA

; <<>> DiG 9.16.23 <<>> @200.26.199.99 ns3.uoc.cw. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 19015
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns3.uoc.cw.			IN	AAAA

;; AUTHORITY SECTION:
uoc.cw.			300	IN	SOA	ns1.bluehost.com. root.v193.vps.unifiedlayer.com. 2021121901 86400 7200 3600000 300

;; Query time: 255 msec
;; SERVER: 200.26.199.99#53(200.26.199.99)
;; WHEN: Sun Mar 06 19:58:49 ;; MSG SIZE  rcvd: 118

