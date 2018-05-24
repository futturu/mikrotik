/ip firewall filter add chain=forward action=fasttrack-connection connection-state=established,related
/ip firewall mangle add action=mark-connection chain=forward comment="Mark IPsec" ipsec-policy=out,ipsec new-connection-mark=ipsec
/ip firewall mangle add action=mark-connection chain=forward comment="Mark IPsec" ipsec-policy=in,ipsec new-connection-mark=ipsec
/ip firewall filter add action=fasttrack-connection chain=forward comment=FastTrack connection-mark=!ipsec connection-state=established,related
