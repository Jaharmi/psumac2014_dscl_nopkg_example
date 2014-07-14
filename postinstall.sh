#!/bin/bash

/usr/sbin/dseditgroup \
    -o create \
    -n /Local/Default \
    -r "Apple Remote Desktop administrator" \
    -c "Apple Remote Desktop administration group" \
    -i 808 \
    -t group \
    com.apple.local.ard_admin