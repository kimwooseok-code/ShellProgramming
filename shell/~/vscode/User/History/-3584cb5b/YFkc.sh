#1/bin/bash

export LANG=en_US.UTF-8

# DATE 변수
DATE=$(date +'%F %T')

# NAME 변수
: << EOF
YESNO='n'
while [ "$YESNO" != 'y' ]
do
    echo
    echo -n "작성자 이름 입력(ex: Kim,WooSeok): "
    read NAME
    echo ; echo "작성자 이름: $NAME" ; echo
    echo -n "작성된 내용 맞습니까? (y/n): "
    read YESNO
done
EOF
NAME='Kim,WooSeok'

# OS 변수
OS=$(cat /etc/centos-release)

# KERNEL 변수
KERNEL=$(uname -sr)

# CPU 변수
CPUNUM=$(lscpu -e | tail -n +2 | wc -l)
CPUTYPE=$(cat /proc/cpuinfo | grep 'model name' | uniq | awk -F: '{print $2}')
CPU="$CPUNUM ($CPUTYPE)"

echo
echo "---------------------[시작] 결과 보고서 ------------------"

cat << EOF

Server Vul. Checker version 1.0

DATE: $DATE
NAME: $NAME

(1) Server Information
============================================
OS          : $OS
Kernel      : $KERNEL
CPU         : $CPU
MEM         : $MEM
DISK        : $DISK

Network     : 
	IP      : 
	GW      : 
	DNS     : 

EOF

