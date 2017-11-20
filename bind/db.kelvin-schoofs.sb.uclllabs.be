; BIND reverse data file for empty rfc1918 zone
;
;
$TTL	30; 86400
@	IN	SOA	ns.kelvin-schoofs.sb.uclllabs.be. schoofskelvin.gmail.com. (
                28  ; serial
                30  ; refresh
                30  ; retry
                30  ; expire
                30 )    ; minimum
; Name servers
@	IN	NS	ns.kelvin-schoofs.sb.uclllabs.be.
@	IN	NS	ns1.uclllabs.be.
@	IN	NS	ns2.uclllabs.be.
@	IN	NS	ns.carl-vanderwegen.sb.uclllabs.be.
@	IN	NS	ns1.he.net.
@	IN	NS	ns2.he.net.
@	IN	NS	ns3.he.net.
@	IN	NS	ns4.he.net.
@	IN	NS	ns5.he.net.
; A records
@	IN	A	193.191.177.160
ns	IN	A	193.191.177.160
www	IN	A	193.191.177.160
test	IN	A	193.191.177.254
.	IN	A	193.191.177.160
testzone	IN	NS	ns.testzone.kelvin-schoofs.sb.uclllabs.be
www1	IN	CNAME	www
www2	IN	CNAME	www
www3	IN	CNAME	www
secure	IN	A	193.191.177.160
supersecure	IN	A	193.191.177.160
mx	IN	A	193.191.177.160
mx	IN	AAAA	2001:6a8:2880:a077::160
@	IN	MX	10 mx
@	IN	CAA	0 issue "digicert.com"
@	IN	CAA	0 issue "letsencrypt.org"
@	IN	CAA	0 issuewild ";"
@	IN	CAA	0 iodef "malto:schoofs.kelvin@gmail.com"
@	IN	AAAA	2001:6a8:2880:a077::160
ns	IN	AAAA	2001:6a8:2880:a077::160
