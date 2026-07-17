#!/bin/bash

while true
do
    clear
    echo "========================================="
    echo "        SYSTEM INFORMATION TOOL"
    echo "========================================="
    echo "1. Operating System"
    echo "2. Kernel Version"
    echo "3. CPU Information"
    echo "4. Memory Usage"
    echo "5. Disk Usage"
    echo "6. Current User"
    echo "7. Current Date & Time"
    echo "8. System Uptime"
    echo "9. Exit"
    echo "========================================="
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo
            echo "Operating System:"
            cat /etc/os-release
            read -p "Press Enter to continue..."
            ;;
        2)
            echo
            echo "Kernel Version:"
            uname -r
            read -p "Press Enter to continue..."
            ;;
        3)
            echo
            echo "CPU Information:"
            lscpu
            read -p "Press Enter to continue..."
            ;;
        4)
            echo
            echo "Memory Usage:"
            free -h
            read -p "Press Enter to continue..."
            ;;
        5)
            echo
            echo "Disk Usage:"
            df -h
            read -p "Press Enter to continue..."
            ;;
        6)
            echo
            echo "Current User:"
            whoami
            read -p "Press Enter to continue..."
            ;;
        7)
            echo
            echo "Current Date & Time:"
            date
            read -p "Press Enter to continue..."
            ;;
        8)
            echo
            echo "System Uptime:"
            uptime
            read -p "Press Enter to continue..."
            ;;
        9)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid choice!"
            read -p "Press Enter to continue..."
            ;;
    esac
done
