; BIND reverse data file for empty rfc1918 zone
;
;
$TTL	30; 86400
@	IN	SOA	ns.testzone.kelvin-schoofs.sb.uclllabs.be. schoofskelvin.gmail.com. (
                12   ; serial
                30  ; refresh
                30  ; retry
                30  ; expire
                30 )    ; minimum
; Name servers
@	IN	NS	ns.testzone.kelvin-schoofs.sb.uclllabs.be
@	IN	NS	ns.kelvin-schoofs.sb.uclllabs.be.
@	IN	NS	ns1.uclllabs.be.
@	IN	NS	ns2.uclllabs.be.
test2	IN	A	8.8.4.4
