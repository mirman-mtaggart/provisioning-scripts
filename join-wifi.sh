#!/bin/bash

SSID=$mds_var8
PASSWORD=$mds_var9
networksetup -addpreferredwirelessnetworkatindex en0 "'$SSID'" 0 wpa2 $PASSWORD

exit 0