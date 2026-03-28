#!/bin/bash
# Script 3: Disk and Permission Auditor (WSL Ubuntu Version)

SYSTEM_DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
LIBREOFFICE_DIRS=("/usr/lib/libreoffice" "/usr/share/libreoffice" "/etc/libreoffice")
USER_CONFIG="$HOME/.config/libreoffice"

echo "=========================================="
echo "     DISK AND PERMISSION AUDITOR"
echo "     System: $(hostname)"
echo "     User: $(whoami)"
echo "     Date: $(date '+%Y-%m-%d %H:%M:%S')"
echo "=========================================="
echo ""

# ================= SYSTEM DIRECTORIES =================
echo "SYSTEM DIRECTORIES"
echo "=================="

for DIR in "${SYSTEM_DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR"
        echo " Permissions : $PERMS"
        echo " Owner/Group : $OWNER:$GROUP"
        echo " Size        : ${SIZE:-N/A}"
        echo ""
    else
        echo "$DIR does not exist"
        echo ""
    fi
done

# ================= LIBREOFFICE =================
echo "LIBREOFFICE DIRECTORIES"
echo "======================="

# Ubuntu check (not rpm)
if ! dpkg -s libreoffice &>/dev/null; then
    echo "LibreOffice not installed"
    echo "Install using: sudo apt install libreoffice"
    echo ""
else
    for DIR in "${LIBREOFFICE_DIRS[@]}"; do
        if [ -d "$DIR" ]; then
            PERMS=$(ls -ld "$DIR" | awk '{print $1}')
            OWNER=$(ls -ld "$DIR" | awk '{print $3}')
            GROUP=$(ls -ld "$DIR" | awk '{print $4}')
            SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

            echo "$DIR"
            echo " Permissions : $PERMS"
            echo " Owner/Group : $OWNER:$GROUP"
            echo " Size        : ${SIZE:-N/A}"
            echo ""
        else
            echo "$DIR not found"
            echo ""
        fi
    done
fi

# ================= USER CONFIG =================
echo "USER CONFIGURATION"
echo "=================="

if [ -d "$USER_CONFIG" ]; then
    PERMS=$(ls -ld "$USER_CONFIG" | awk '{print $1}')
    OWNER=$(ls -ld "$USER_CONFIG" | awk '{print $3}')
    SIZE=$(du -sh "$USER_CONFIG" 2>/dev/null | cut -f1)
    FILES=$(find "$USER_CONFIG" -type f | wc -l)

    echo "Path        : $USER_CONFIG"
    echo "Permissions : $PERMS"
    echo "Owner       : $OWNER"
    echo "Size        : ${SIZE:-N/A}"
    echo "Files       : $FILES"
else
    echo "No LibreOffice config found"
fi

# ================= SECURITY =================
echo ""
echo "SECURITY CHECK"
echo "=============="

FOUND=0
for DIR in "${LIBREOFFICE_DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERM=$(stat -c %a "$DIR")
        if [ "${PERM: -1}" -ge 2 ]; then
            echo "WARNING: $DIR is world-writable ($PERM)"
            FOUND=1
        fi
    fi
done

if [ $FOUND -eq 0 ]; then
    echo "No insecure permissions found"
fi

echo ""
echo "========== DONE =========="