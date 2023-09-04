#!/bin/bash
# check mysql eror 
mysql_status=$(service mysql status)

# Cek jika status MySQL berhenti
if [[ "$mysql_status" =~ "stopped" ]]; then
    echo "MySQL berhenti. Merestart MySQL..."
    service mysql restart
    echo "MySQL berhasil direstart."
else
    echo "MySQL berjalan normal."
fi
