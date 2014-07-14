#!/bin/bash

/usr/bin/dscl -q . -read Groups/com.apple.local.ard_admin > /dev/null 2>&1
DSCL_EXIT_STATUS=$?

case ${DSCL_EXIT_STATUS} in
    0)
        # Group exists, needs to be removed
        exit 0
        ;;
    56)
        # Group doesn't exist, skip
        exit 1
        ;;
    *)
        # Something else, draw four
        exit 4
        ;;
esac