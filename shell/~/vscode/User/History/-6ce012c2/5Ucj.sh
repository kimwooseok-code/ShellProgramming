#!/bin/bash
##############################
# 1. ping 192.168.10.2
# 2. ping 8.8.8.8
# 3. ping www.google.com
###############################
IP1=192.168.10.2
IP2=8.8.8.8
IP3=www.google.com

source /root/shell/functions.sh

# 1. 로컬 네트워크에 ping 테스트 
print_info "ping $IP2"
ping -c 2 -W 1 $IP2 >/dev/null 2>&1
if [ $? -eq 0 ] ; then
    print_good "[  OK  ] External Network Connection"
else
    print_error " [  FAIL  ] External Network Connection"
    cat << EOF
    [ FAIL ] Local Network Connection
   (ㄱ) # netstat -nr (# route -n, # ip route)
EOF
fi
# 2. 외부 네트워크에 ping 테스트


# 3. 외부 이름에 ping 테스트