; timestamp: 20220306T210353Z
; source id: tld-query-st.-dns-us.st.
; source locator: dns-us.st.
; source IP address: 198.105.223.67
; backup point IP address: 111.42.148.76
; status: success
st.			86400	IN	NS	dns-st.bahnhof.net.st.			86400	IN	NS	dns-us.st.st.			86400	IN	NS	dns-au.st.st.			86400	IN	NS	ns1.bahnhof.net.dns-us.st.		1706	IN	A	198.105.223.67dig @198.105.223.67 dns-us.st. AAAA

; <<>> DiG 9.16.23 <<>> @198.105.223.67 dns-us.st. AAAA
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 18125
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;dns-us.st.			IN	AAAA

;; AUTHORITY SECTION:
dns-us.st.		1800	IN	SOA	panel.knox.st. admin.knox.st. 2015042209 10800 3600 604800 86400

;; Query time: 15 msec
;; SERVER: 198.105.223.67#53(198.105.223.67)
;; WHEN: Sun Mar 06 21:03:57 ;; MSG SIZE  rcvd: 91

