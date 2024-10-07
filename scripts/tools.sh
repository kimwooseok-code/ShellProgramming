#! /bin/bash

# Function definitions
WHO() {
    who | boxes -d santa
} 

DATE() {
    date | boxes -d bear
}

EXIT() {
    echo "[ FAIL ] 잘못된 선택"
    exit 2
}

# Variable definitions

# Main functions
cat << EOF
echo "===================================================="
echo "  (1). who      (2). date     (3). pwd              "
echo "===================================================="
EOF

echo -n "번호 선택? : "
read CHOICE
echo

case $CHOICE in
    1) WHO  ;;
    2) DATE ;;
    3) pwd  ;;
    *) EXIT ;;
esac