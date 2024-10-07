#!/bin/bash

set -e

############################################
# 1) 패키지 설치 - httpd, mod_ssl
# 2) 웹 서비스 설정 - /var/www/thml/index.html
# 3) 웹 서비스 기동 - httpd.service
# 4) 방화벽에 등록 - http, https
############################################

#
# The file(functions.sh) load
#
. /root/shell/functions.sh

#
# Main function
#

# 1) 패키지 설치 - nginx
echo ; echo "[ Phase 01 ] 패키지 설치"
PkgInstall nginx

# 2) 웹 서비스 설정 - /usr/share/nginx/html/index.html
echo ; echo "[ Phase 02 ] 웹 서비스 설정"
RandomIndex "/usr/share/nginx/html/index.html" "My NGINX Web Server"
echo "[ OK ] 랜덤 웹페이지가 정상적으로 생성되었습니다."

# 3) 웹 서비스 기동 - nginx.service
echo ; echo "[ Phase 03 ] 웹 서비스 기동"
ServiceStart nginx.service

# 4) 방화벽에 등록 - http, https
echo ; echo "[ Phase 04 ] 방화벽 등록"
FWRule http