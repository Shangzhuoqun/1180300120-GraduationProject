; timestamp: 20220306T203938Z
; source id: tld-query-msd.-ac4.nstld.com.
; source locator: ac4.nstld.com.
; source IP address: 192.42.176.30
; backup point IP address: 111.42.148.76
; status: success
msd.			3599	IN	NS	ac1.nstld.com.msd.			3599	IN	NS	ac4.nstld.com.msd.			3599	IN	NS	ac3.nstld.com.msd.			3599	IN	NS	ac2.nstld.com.ac4.nstld.com.		265	IN	A	192.42.176.30ac4.nstld.com.		265	IN	AAAA	2001:500:123::30