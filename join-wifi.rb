#!/usr/bin/ruby

SSID = ENV["mds_var8"]
password = ENV["mds_var9"]

`networksetup -addpreferredwirelessnetworkatindex en0 "#{SSID}" 0 wpa2 #{password}`

exit true