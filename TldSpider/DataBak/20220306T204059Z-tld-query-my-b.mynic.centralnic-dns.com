; timestamp: 20220306T204059Z
; source id: tld-query-my.-b.mynic.centralnic-dns.com.
; source locator: b.mynic.centralnic-dns.com.
; source IP address: 185.24.64.114
; backup point IP address: 111.42.148.76
; status: success
my.			3600	IN	NS	a.mynic.centralnic-dns.com.my.			3600	IN	NS	b.mynic.centralnic-dns.com.my.			3600	IN	NS	c.mynic.centralnic-dns.com.my.			3600	IN	NS	a.nic.my.my.			3600	IN	NS	a1.nic.my.my.			3600	IN	NS	d.mynic.centralnic-dns.com.b.mynic.centralnic-dns.com. 3600 IN	A	185.24.64.114b.mynic.centralnic-dns.com. 1772 IN	AAAA	2a04:2b00:13cc::1:114