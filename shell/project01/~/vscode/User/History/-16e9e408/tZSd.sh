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
# 3) 방화벽 등록 - telnet

echo
# 2. vsftpd 서비스
# 1) 패지키 설치 - vsftpd, ftp
# 2) 서비스 설정 - /etc/vsftpd/{ftpusers, user_list}
# 3) 서비스 기동 - vsftpd.service 
# 4) 방화벽 등록 - ftp


