; timestamp: 20220306T195043Z
; source id: tld-query-by.-dns1.tld.becloudby.com.
; source locator: dns1.tld.becloudby.com.
; source IP address: 93.125.25.72
; backup point IP address: 111.42.148.76
; status: success
dig @93.125.25.72 by. NS

; <<>> DiG 9.16.23 <<>> @93.125.25.72 by. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

dns1.tld.becloudby.com.	162	IN	A	93.125.25.72dns1.tld.becloudby.com.	162	IN	AAAA	2a00:c827:a:2::2