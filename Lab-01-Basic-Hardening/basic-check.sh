#!/bin/bash
# Lab 01 - Basic Linux Security Check
# Author: David Ehab | From Fayoum to the World

echo "[+] Starting Basic Security Audit..."

echo "[1] Checking for users with empty passwords..."
sudo awk -F: '($2 == "" ) {print $1}' /etc/shadow

echo "[2] Checking open ports..."
ss -tuln

echo "[3] Checking failed SSH login attempts..."
sudo grep "Failed password" /var/log/auth.log | tail -5

echo "[+] Audit Finished"
