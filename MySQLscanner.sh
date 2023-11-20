#! /bin/bash

# This script is designed to find hosts with MySQL installed.

# Prompt and read first IP
echo "Enter starting IP adress : "
read FirstIP

# Prompt and read last octet of the last IP
echo "Enter the last octet of the last IP adress : "
read LastOctetIP

# Prompt and readd the port you want to scan
echo "Enter the port numbbber you want to scan for : "
read port


nmap -ST $FirstIP-$LastOctetIP -p $port >/dev/null -oG MySQLscan
cat MySQLscan | grep open > MySQLscan2
cat MySQLscan2
