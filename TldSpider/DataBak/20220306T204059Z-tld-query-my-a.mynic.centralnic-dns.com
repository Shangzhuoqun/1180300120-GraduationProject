; timestamp: 20220306T204059Z
; source id: tld-query-my.-a.mynic.centralnic-dns.com.
; source locator: a.mynic.centralnic-dns.com.
; source IP address: 194.169.218.114
; backup point IP address: 111.42.148.76
; status: success
my.			3600	IN	NS	a1.nic.my.my.			3600	IN	NS	b.mynic.centralnic-dns.com.my.			3600	IN	NS	a.nic.my.my.			3600	IN	NS	a.mynic.centralnic-dns.com.my.			3600	IN	NS	d.mynic.centralnic-dns.com.my.			3600	IN	NS	c.mynic.centralnic-dns.com.a.mynic.centralnic-dns.com. 3600 IN	A	194.169.218.114a.mynic.centralnic-dns.com. 3600 IN	AAAA	2001:67c:13cc::1:114