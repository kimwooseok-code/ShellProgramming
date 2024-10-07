#!/bin/bash
##############################
# 1. $HOME/.bashrc
# 2. $HOME/.vimrc
# 3. $
##############################

set -e

source /root/shell/functions.sh

echo "[$HOME/.bashrc]"
##############################
# 1. $HOME/.bashrc
##############################
BASHRC=$HOME/bashrc.txt
#  BASHRC=$HOME/.bashrc
echo "[Phase 01] $BASHRC 파일 설정"

/bin/cp /etc/skel/.bashrc $BASHRC

