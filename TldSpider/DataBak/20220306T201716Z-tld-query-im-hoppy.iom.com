; timestamp: 20220306T201716Z
; source id: tld-query-im.-hoppy.iom.com.
; source locator: hoppy.iom.com.
; source IP address: 217.23.163.140
; backup point IP address: 111.42.148.76
; status: success
im.			3355	IN	NS	ns4.ja.net.im.			3355	IN	NS	barney.advsys.co.uk.im.			3355	IN	NS	hoppy.iom.com.im.			3355	IN	NS	pebbles.iom.com.hoppy.iom.com.		600	IN	A	217.23.163.140dig @217.23.163.140 hoppy.iom.com. AAAA

; <<>> DiG 9.16.23 <<>> @217.23.163.140 hoppy.iom.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 24257
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;hoppy.iom.com.			IN	AAAA

;; AUTHORITY SECTION:
iom.com.		1800	IN	SOA	pebbles.iom.com. dnsadmin.domicilium.com. 2021060901 1800 600 1048576 3600

;; Query time: 275 msec
;; SERVER: 217.23.163.140#53(217.23.163.140)
;; WHEN: Sun Mar 06 20:17:17 ;; MSG SIZE  rcvd: 106

