#!/bin/bash
mysql_status=$(/bin/systemctl status mysql.service)

# Cek jika status MySQL berhenti
if [[ "$mysql_status" =~ "stopped" ]]; then
    echo "MySQL berhenti. Merestart MySQL..."
    /bin/systemctl restart mysql.service
    echo "MySQL berhasil direstart."
else
    echo "MySQL berjalan normal."
fi
