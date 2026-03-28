#!/bin/bash
# Script 2: FOSS Package Inspector (Ubuntu/WSL Version)
# Author: Priyanshu Vashisth
# Course: Open Source Software

PACKAGE="libreoffice"
STUDENT_NAME="Priyanshu Vashisth"

echo "=========================================="
echo "     FOSS PACKAGE INSPECTOR"
echo "        $STUDENT_NAME"
echo "     Target: $PACKAGE"
echo "=========================================="
echo ""

# Check if package is installed using dpkg
if dpkg -s $PACKAGE &>/dev/null; then
    echo "✅ $PACKAGE is INSTALLED on this system"
    echo ""
    echo "Package Details:"
    echo "----------------"
    dpkg -s $PACKAGE | grep -E 'Version|Architecture|Maintainer'
    
    echo ""
    VERSION=$(dpkg -s $PACKAGE | grep Version | awk '{print $2}')
    echo "Installed Version : $VERSION"

    # Check running version
    if command -v libreoffice &>/dev/null; then
        RUNNING_VER=$(libreoffice --version 2>/dev/null | head -1)
        echo "Running Version   : $RUNNING_VER"
    fi
else
    echo "❌ $PACKAGE is NOT installed on this system"
    echo ""
    echo "To install, run:"
    echo "  sudo apt update"
    echo "  sudo apt install libreoffice"
fi

echo ""
echo "=========================================="
echo "     PHILOSOPHY NOTES"
echo "=========================================="

echo ""
echo "📄 LIBREOFFICE PHILOSOPHY"
echo "------------------------"
echo "LibreOffice is a free and open-source office suite"
echo "developed by The Document Foundation."

echo ""
echo "License: MPL 2.0"
echo "  - Open source and free to use"
echo "  - No vendor lock-in"
echo "  - Supports OpenDocument Format (ODF)"

echo ""
echo "=========================================="
echo "     OPEN SOURCE PRINCIPLES"
echo "=========================================="
echo "• Free to use"
echo "• Open for modification"
echo "• Community driven"
echo ""