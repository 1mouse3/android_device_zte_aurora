#!/system/bin/sh

#zte_ysj_20120912 change the ttl's value.
busybox sysctl -w net.ipv4.ip_default_ttl=255
#zte_ysj_20120912 end