#!/bin/bash

/usr/bin/dscl -q . -read Groups/com.apple.local.ard_admin > /dev/null 2>&1
DSCL_EXIT_STATUS=$?

case ${DSCL_EXIT_STATUS} in
    0)
        # Group exists
        exit 1
        ;;
    56)
        # Group doesn't exist but needs to
        exit 0
        ;;
    *)
        # Something else but in Keynote no one can hear you scream
        exit 0
        ;;
esac