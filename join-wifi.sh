#!/bin/bash

SSID=$(eval echo $mds_var8)
PASSWORD=$(eval echo $mds_var9)
networksetup -addpreferredwirelessnetworkatindex en0 $SSID 0 wpa2 $PASSWORD

exit 0