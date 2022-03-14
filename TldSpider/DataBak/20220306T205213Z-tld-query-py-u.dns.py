; timestamp: 20220306T205213Z
; source id: tld-query-py.-u.dns.py.
; source locator: u.dns.py.
; source IP address: 198.6.1.65
; backup point IP address: 111.42.148.76
; status: success
py.			3595	IN	NS	p.dns.py.py.			3595	IN	NS	c.dns.py.py.			3595	IN	NS	u.dns.py.py.			3595	IN	NS	l.dns.py.py.			3595	IN	NS	b.dns.py.u.dns.py.		3600	IN	A	198.6.1.65dig @198.6.1.65 u.dns.py. AAAA

; <<>> DiG 9.16.23 <<>> @198.6.1.65 u.dns.py. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 64705
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;u.dns.py.			IN	AAAA

;; AUTHORITY SECTION:
py.			1800	IN	SOA	a.dns.py. abuse.dns.py. 100 1800 300 604800 1800

;; Query time: 280 msec
;; SERVER: 198.6.1.65#53(198.6.1.65)
;; WHEN: Sun Mar 06 20:52:18 ;; MSG SIZE  rcvd: 81

