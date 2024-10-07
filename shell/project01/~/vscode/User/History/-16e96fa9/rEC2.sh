#!/bin/bash
##############################
# 1. $HOME/.bashrc
# 2. $HOME/.vimrc
# 3. $
##############################

set -e

source /root/shell/functions.sh

echo "[$HOME/.bashrc]"
# 1. $HOME/.bashrc
BASHRC=$HOME/bashrc.txt
#  BASHRC=$HOME/.bashrc
echo "[Phase 01] $BASHRC 파일 설정"

/bin/cp /etc/skel/.bashrc $BASHRC
cat << EOF >> $BASHRC

#
# Specific configuration
#

export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias pps='ps -ef | head -1; ps -ef | grep $1 | egrep ":vw "ps|grep'
alias vi='/usr/bin/vim'

EOF
echo "[  OK  ] $BASHRC 설정 완료"


echo "[$HOME/.vimrc]"
# 2. $HOME/.vimrc
VIMRC=$HOME/.vimrc
#  BASHRC=$HOME/.bashrc
echo "[Phase 01] $BASHRC 파일 설정"
