#! /bin/bash

# This script is designed to find hosts with MySQL installed. On a LAN.
nmap -ST 192.168.181.0/24 -p 3306 >/ddev/null -oG MySQLscan
cat MySQLscan | grep open > MySQLscan2
cat MySQLscan2
