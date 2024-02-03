#!/bin/bash

echo "Change DNS Server"

read -p ' 1.shecan 2.403 3.none ' input

if [[ "$input" == "1" ]]; then
    echo "Changing DNS..."
    echo "nameserver 178.22.122.100" | sudo tee /etc/resolv.conf > /dev/null
    echo "nameserver 185.51.200.2" | sudo tee /etc/resolv.conf > /dev/null
elif [[ "$input" == "2"]]; then
    echo "nameserver 178.22.122.100" | sudo tee /etc/resolv.conf > /dev/null
    echo "nameserver 178.22.122.100" | sudo tee /etc/resolv.conf > /dev/null
elif [[ "$input" == "3" ]]; then
    echo "Removing DNS..."
    echo "" | sudo tee /etc/resolv.conf > /dev/null
else
    echo "Please Enter 1 or 2 or 3"
fi

