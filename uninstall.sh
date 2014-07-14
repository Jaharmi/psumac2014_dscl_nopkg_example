#!/bin/bash

/usr/sbin/dseditgroup \
    -o delete \
    -n /Local/Default \
    com.apple.local.ard_admin > /dev/null 2>&1