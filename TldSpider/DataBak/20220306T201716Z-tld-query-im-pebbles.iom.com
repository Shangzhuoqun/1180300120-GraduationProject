; timestamp: 20220306T201716Z
; source id: tld-query-im.-pebbles.iom.com.
; source locator: pebbles.iom.com.
; source IP address: 83.218.14.53
; backup point IP address: 111.42.148.76
; status: success
im.			3600	IN	NS	hoppy.iom.com.im.			3600	IN	NS	barney.advsys.co.uk.im.			3600	IN	NS	pebbles.iom.com.im.			3600	IN	NS	ns4.ja.net.pebbles.iom.com.	1001	IN	A	83.218.14.53dig @83.218.14.53 pebbles.iom.com. AAAA

; <<>> DiG 9.16.23 <<>> @83.218.14.53 pebbles.iom.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 55257
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;pebbles.iom.com.		IN	AAAA

;; AUTHORITY SECTION:
iom.com.		1800	IN	SOA	pebbles.iom.com. dnsadmin.domicilium.com. 2021060901 1800 600 1048576 3600

;; Query time: 9 msec
;; SERVER: 83.218.14.53#53(83.218.14.53)
;; WHEN: Sun Mar 06 20:17:18 ;; MSG SIZE  rcvd: 100

