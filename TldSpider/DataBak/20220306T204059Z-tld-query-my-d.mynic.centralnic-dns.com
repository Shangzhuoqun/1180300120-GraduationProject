; timestamp: 20220306T204059Z
; source id: tld-query-my.-d.mynic.centralnic-dns.com.
; source locator: d.mynic.centralnic-dns.com.
; source IP address: 212.18.249.114
; backup point IP address: 111.42.148.76
; status: success
my.			86400	IN	NS	a.nic.my.my.			86400	IN	NS	a.mynic.centralnic-dns.com.my.			86400	IN	NS	b.mynic.centralnic-dns.com.my.			86400	IN	NS	c.mynic.centralnic-dns.com.my.			86400	IN	NS	d.mynic.centralnic-dns.com.my.			86400	IN	NS	a1.nic.my.d.mynic.centralnic-dns.com. 3600 IN	A	212.18.249.114d.mynic.centralnic-dns.com. 3600 IN	AAAA	2a04:2b00:13ff::114