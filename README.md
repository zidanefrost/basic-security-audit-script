# basic-security-audit-script
This script performs a lightweight security audit on a Linux system. Designed for beginners, students, or small businesses who want a quick look at their system's basic security posture.

## What It Checks:
- SSH root login setting
- Users with sudo access
- Open ports
- World-writable files
- Firewall (UFW) status

## How to Use:

```bash
chmod +x audit.sh
./audit.sh > results.txt
