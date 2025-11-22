#!/bin/bash

HOSTS_FILE="/opt/dns-01/scripts/wol-hosts.txt"

while read -r MAC IP; do
    # Skip comments and empty lines
    [[ "$MAC" =~ ^#.*$ || -z "$MAC" ]] && continue

    if [ -z "$IP" ]; then
        wakeonlan "$MAC"
    else
        wakeonlan -i "$IP" "$MAC"
    fi
done < "$HOSTS_FILE"
