; timestamp: 20220306T205135Z
; source id: tld-query-ps.-rip.psg.com.
; source locator: rip.psg.com.
; source IP address: 147.28.0.39
; backup point IP address: 111.42.148.76
; status: success
ps.			3600	IN	NS	ote.pnina.ps.ps.			3600	IN	NS	ns1.pnina.ps.ps.			3600	IN	NS	rip.psg.com.ps.			3600	IN	NS	ps.cctld.authdns.ripe.net.ps.			3600	IN	NS	dns1.gov.ps.ps.			3600	IN	NS	ps-ns.anycast.pch.net.ps.			3600	IN	NS	fork.sth.dnsnode.net.rip.psg.com.		988	IN	A	147.28.0.39rip.psg.com.		397	IN	AAAA	2001:418:1::39