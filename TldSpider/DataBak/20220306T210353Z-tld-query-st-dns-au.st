; timestamp: 20220306T210353Z
; source id: tld-query-st.-dns-au.st.
; source locator: dns-au.st.
; source IP address: 119.252.188.97
; backup point IP address: 111.42.148.76
; status: success
st.			86400	IN	NS	dns-us.st.st.			86400	IN	NS	ns1.bahnhof.net.st.			86400	IN	NS	dns-st.bahnhof.net.st.			86400	IN	NS	dns-au.st.dns-au.st.		3600	IN	A	119.252.188.97dig @119.252.188.97 dns-au.st. AAAA

; <<>> DiG 9.16.23 <<>> @119.252.188.97 dns-au.st. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16021
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;dns-au.st.			IN	AAAA

;; AUTHORITY SECTION:
dns-au.st.		3600	IN	SOA	ns.bahnhof.net. hostmaster.bahnhof.se. 2019120503 1800 600 604800 3600

;; Query time: 1549 msec
;; SERVER: 119.252.188.97#53(119.252.188.97)
;; WHEN: Sun Mar 06 21:03:55 ;; MSG SIZE  rcvd: 109

