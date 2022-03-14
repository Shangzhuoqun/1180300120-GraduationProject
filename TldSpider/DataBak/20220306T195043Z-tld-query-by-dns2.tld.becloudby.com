; timestamp: 20220306T195043Z
; source id: tld-query-by.-dns2.tld.becloudby.com.
; source locator: dns2.tld.becloudby.com.
; source IP address: 93.125.25.73
; backup point IP address: 111.42.148.76
; status: success
dig @93.125.25.73 by. NS

; <<>> DiG 9.16.23 <<>> @93.125.25.73 by. NS
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached

dns2.tld.becloudby.com.	148	IN	A	93.125.25.73dns2.tld.becloudby.com.	147	IN	AAAA	2a00:c827:a:3::2