; timestamp: 20220306T213039Z
; source id: tld-query-yun.-ns4.teleinfoo.com.
; source locator: ns4.teleinfoo.com.
; source IP address: 103.61.63.1
; backup point IP address: 111.42.148.76
; status: success
yun.			3599	IN	NS	ns3.teleinfo.cn.

; <<>> DiG 9.16.23 <<>> @103.61.63.1 ns4.teleinfoo.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 35375
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ns4.teleinfoo.com.		IN	AAAA

;; AUTHORITY SECTION:
teleinfoo.com.		4	IN	SOA	dns9.hichina.com. hostmaster.hichina.com. 2022011002 3600 1200 86400 600

;; Query time: 5 msec
;; SERVER: 103.61.63.1#53(103.61.63.1)
;; WHEN: Sun Mar 06 21:30:40 ;; MSG SIZE  rcvd: 106
