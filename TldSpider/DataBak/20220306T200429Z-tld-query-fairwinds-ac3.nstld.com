; timestamp: 20220306T200429Z
; source id: tld-query-fairwinds.-ac3.nstld.com.
; source locator: ac3.nstld.com.
; source IP address: 192.42.175.30
; backup point IP address: 111.42.148.76
; status: success
fairwinds.		3600	IN	NS	ac1.nstld.com.fairwinds.		3600	IN	NS	ac3.nstld.com.fairwinds.		3600	IN	NS	ac2.nstld.com.fairwinds.		3600	IN	NS	ac4.nstld.com.ac3.nstld.com.		550	IN	A	192.42.175.30ac3.nstld.com.		550	IN	AAAA	2001:500:122::30