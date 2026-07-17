import os
import platform
import socket

def clear_screen():
    os.system("cls" if os.name == "nt" else "clear")

while True:
    clear_screen()

    print("=========================================")
    print("      NETWORK INFORMATION TOOLKIT")
    print("=========================================")
    print("1. Show Hostname")
    print("2. Show Local IP Address")
    print("3. Show Network Interfaces")
    print("4. Test Internet Connection")
    print("5. Show DNS Servers")
    print("6. Show Routing Table")
    print("7. Exit")
    print("=========================================")

    choice = input("Enter your choice: ")

    if choice == "1":
        print("\nHostname:")
        print(socket.gethostname())

    elif choice == "2":
        print("\nLocal IP Address:")
        try:
            hostname = socket.gethostname()
            ip = socket.gethostbyname(hostname)
            print(ip)
        except Exception as e:
            print("Error:", e)

    elif choice == "3":
        print("\nNetwork Interfaces:")
        if platform.system() == "Windows":
            os.system("ipconfig")
        else:
            os.system("ip addr show")

    elif choice == "4":
        print("\nTesting Internet Connection...")
        if platform.system() == "Windows":
            os.system("ping -n 4 8.8.8.8")
        else:
            os.system("ping -c 4 8.8.8.8")

    elif choice == "5":
        print("\nDNS Servers:")
        if platform.system() == "Windows":
            os.system("ipconfig /all")
        else:
            os.system("cat /etc/resolv.conf")

    elif choice == "6":
        print("\nRouting Table:")
        if platform.system() == "Windows":
            os.system("route print")
        else:
            os.system("ip route")

    elif choice == "7":
        print("Exiting...")
        break

    else:
        print("Invalid Choice!")

    input("\nPress Enter to continue...")
