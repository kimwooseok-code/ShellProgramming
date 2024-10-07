#!/bin/bash
###########################
# 1. telnet 서비스
# 2. vsftpd 서비스
# 3. ?
###########################

source /root/shell/functions.sh

# 1. telnet 서비스
# 1) 패키지 설치 - telnet-server, telnet
PKGS="telnet-server telnet"
echo "[ Phase 01] $PKGS 패키지 설치"
PkgInstall $PKGS

# 2) 서비스 기동 - telnet.socket
SVCS="telnet.socket"
echo "[ Phase 02] $SVCS 서비스 기동"
ServiceStart $SVCS

# 3) 방화벽 등록 - telnet
RULES="telnet"
echo "[ Phase 03] $RULES 방화벽에 등록"
FWRule $RULES

echo
# 2. vsftpd 서비스

echo "[FTP 서비스]"
# 1) 패지키 설치 - vsftpd, ftp
PKGS="vsftpd ftpd"
echo "[ Phase01] $PKGS 패키지 설치"
PkgInstall $PKGS

# 2) 서비스 설정 - /etc/vsftpd/{ftpusers, user_list}
FTPUSERS=/etc/vsftpd/ftpusers
USER_LIST=/etc/vsftpd/user_list
for i in $FTPUSERS $USER_LIST
do  
    sed- i 's/^root/#root/' $i
done
echo "[  OK  ] FTP root 사용자 허용 설정 완료"

# 3) 서비스 기동 - vsftpd.service 
# 4) 방화벽 등록 - ftp


