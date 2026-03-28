#!/bin/bash
# Script 1: System Identity Report
# Author: Priyanshu Vashisth
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Priyanshu Vashisth"
SOFTWARE_CHOICE="LibreOffice"
CURRENT_DATE=$(date '+%A, %d %B %Y %H:%M:%S')
CURRENT_USER=$(whoami)
HOME_DIR="$HOME"
KERNEL_VERSION=$(uname -r)
UPTIME=$(uptime -p 2>/dev/null || uptime)

# --- Get distribution info (works for WSL/Ubuntu/Fedora) ---
if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d'"' -f2)
elif [ -f /etc/fedora-release ]; then
    DISTRO=$(cat /etc/fedora-release)
else
    DISTRO="Unknown Linux Distribution"
fi

# --- License info ---
OS_LICENSE="Linux Kernel: GPL v2 | Distros may include MIT, GPL, BSD, and other FOSS licenses"

# --- Display ---
echo "=========================================="
echo "        OPEN SOURCE AUDIT"
echo "        $STUDENT_NAME"
echo "=========================================="
echo ""
echo "SYSTEM IDENTITY REPORT"
echo "----------------------"
echo "Distribution      : $DISTRO"
echo "Kernel Version    : $KERNEL_VERSION"
echo "Current User      : $CURRENT_USER"
echo "Home Directory    : $HOME_DIR"
echo "System Uptime     : $UPTIME"
echo "Current Date/Time : $CURRENT_DATE"
echo ""
echo "LICENSE INFORMATION"
echo "-------------------"
echo "$OS_LICENSE"
echo ""
echo "SOFTWARE AUDIT TARGET"
echo "---------------------"
echo "Chosen Software    : $SOFTWARE_CHOICE"
echo "License            : MPL 2.0 (Mozilla Public License)"
echo "Description        : LibreOffice is a free and open-source office suite,"
echo "                     developed by The Document Foundation. It was forked"
echo "                     from OpenOffice.org in 2010."
echo "=========================================="