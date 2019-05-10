#!/bin/bash

SSID=$mds_var7
PASSWORD=$mds_var8
networksetup -addpreferredwirelessnetworkatindex en0 "$SSID" 0 wpa2 "$PASSWORD"

exit 0