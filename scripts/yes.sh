#! /bin/bash

# Function definitions
YES() {
    echo 
    echo "YES" | boxes -d critical
    echo
}

NO() {
    echo
    echo "NO" | boxes -d critical
    echo
}

FAIL() {
    echo "[ FAIL ] 잘못된 선택"
    exit 2
}

# Variable definitions

# Main functions
echo -n " 선택? (yes/no): "
read CHOICE

case $CHOICE in 
    y|Y|yes|YES|Yes) YES ;;
    n|N|no|NO|No)     NO ;;
    *)              FAIL ;;
esac
