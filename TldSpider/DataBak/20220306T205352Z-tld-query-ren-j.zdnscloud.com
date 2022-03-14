; timestamp: 20220306T205352Z
; source id: tld-query-ren.-j.zdnscloud.com.
; source locator: j.zdnscloud.com.
; source IP address: 72
; backup point IP address: 111.42.148.76
; status: success
ren.			3600	IN	NS	c.zdnscloud.com.ren.			3600	IN	NS	j.zdnscloud.com.ren.			3600	IN	NS	b.zdnscloud.com.ren.			3600	IN	NS	d.zdnscloud.com.ren.			3600	IN	NS	f.zdnscloud.com.ren.			3600	IN	NS	a.zdnscloud.com.ren.			3600	IN	NS	i.zdnscloud.com.ren.			3600	IN	NS	g.zdnscloud.com.dig @j.zdnscloud.com. j.zdnscloud.com. A

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. A
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 32790
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: c160fa61b4369665b3294ec36224aeeb573ab37b397b0dec (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	A

;; Query time: 353 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 20:53:55 ;; MSG SIZE  rcvd: 72

dig @j.zdnscloud.com. j.zdnscloud.com. AAAA

; <<>> DiG 9.16.23 <<>> @j.zdnscloud.com. j.zdnscloud.com. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: REFUSED, id: 46886
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: fa7f56956c2dabc37d02503c6224aeeb744c95805c3b29cc (good)
;; QUESTION SECTION:
;j.zdnscloud.com.		IN	AAAA

;; Query time: 251 msec
;; SERVER: 2401:8d00:2::1#53(2401:8d00:2::1)
;; WHEN: Sun Mar 06 20:53:56 ;; MSG SIZE  rcvd: 72

