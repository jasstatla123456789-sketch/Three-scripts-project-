#!/bin/bash

while true
do
    clear
    echo "========================================="
    echo "      NETWORK INFORMATION TOOLKIT"
    echo "========================================="
    echo "1. Show Hostname"
    echo "2. Show Local IP Address"
    echo "3. Show Network Interfaces"
    echo "4. Test Internet Connection"
    echo "5. Show DNS Servers"
    echo "6. Show Routing Table"
    echo "7. Exit"
    echo "========================================="
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo
            echo "Hostname:"
            hostname
            read -p "Press Enter to continue..."
            ;;
        2)
            echo
            echo "Local IP Address:"
            hostname -I
            read -p "Press Enter to continue..."
            ;;
        3)
            echo
            echo "Network Interfaces:"
            ip addr show
            read -p "Press Enter to continue..."
            ;;
        4)
            echo
            echo "Testing Internet Connection..."
            ping -c 4 8.8.8.8
            read -p "Press Enter to continue..."
            ;;
        5)
            echo
            echo "DNS Servers:"
            grep nameserver /etc/resolv.conf
            read -p "Press Enter to continue..."
            ;;
        6)
            echo
            echo "Routing Table:"
            ip route
            read -p "Press Enter to continue..."
            ;;
        7)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid Choice!"
            read -p "Press Enter to continue..."
            ;;
    esac
done
