; timestamp: 20220306T200751Z
; source id: tld-query-frontdoor.-ac1.nstld.com.
; source locator: ac1.nstld.com.
; source IP address: 192.42.173.30
; backup point IP address: 111.42.148.76
; status: success
frontdoor.		3600	IN	NS	ac2.nstld.com.frontdoor.		3600	IN	NS	ac4.nstld.com.frontdoor.		3600	IN	NS	ac1.nstld.com.frontdoor.		3600	IN	NS	ac3.nstld.com.ac1.nstld.com.		398	IN	A	192.42.173.30ac1.nstld.com.		398	IN	AAAA	2001:500:120::30