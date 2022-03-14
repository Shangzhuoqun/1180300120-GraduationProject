; timestamp: 20220306T205557Z
; source id: tld-query-rs.-g.nic.rs.
; source locator: g.nic.rs.
; source IP address: 147.91.8.6
; backup point IP address: 111.42.148.76
; status: success
rs.			3600	IN	NS	a.nic.rs.rs.			3600	IN	NS	g.nic.rs.rs.			3600	IN	NS	h.nic.rs.rs.			3600	IN	NS	b.nic.rs.rs.			3600	IN	NS	f.nic.rs.rs.			3600	IN	NS	l.nic.rs.g.nic.rs.		1792	IN	A	147.91.8.6dig @147.91.8.6 g.nic.rs. AAAA

; <<>> DiG 9.16.23 <<>> @147.91.8.6 g.nic.rs. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16617
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;g.nic.rs.			IN	AAAA

;; AUTHORITY SECTION:
nic.rs.			1800	IN	SOA	a.nic.rs. hostmaster.nic.rs. 2020121501 14400 3600 604800 3600

;; Query time: 84 msec
;; SERVER: 147.91.8.6#53(147.91.8.6)
;; WHEN: Sun Mar 06 20:56:01 ;; MSG SIZE  rcvd: 86

