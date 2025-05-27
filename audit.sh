#!/bin/bash

echo "Running security audit..."

# Check if root login via SSH is disabled
echo -e "\n[+] Checking SSH root login settings:"
grep PermitRootLogin /etc/ssh/sshd_config

# List users with sudo access
echo -e "\n[+] Listing users with sudo access:"
getent group sudo

# List open ports
echo -e "\n[+] Open ports:"
ss -tuln

# Check for world-writable files (not in /proc or /sys)
echo -e "\n[+] World-writable files (excluding /proc and /sys):"
find / -path /proc -prune -o -path /sys -prune -o -type f -perm -o+w -ls 2>/dev/null

# Check firewall status
echo -e "\n[+] UFW firewall status:"
ufw status verbose

echo -e "\nAudit complete."
