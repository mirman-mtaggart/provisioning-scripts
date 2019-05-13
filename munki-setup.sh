#!/bin/bash

MUNKI_FILE=/Library/Preferences/ManagedInstalls.plist

# Client Identifier is $mds_var1
CLIENT_ID=$mds_var1

# Set Client Identifier
defaults write $MUNKI_FILE ClientIdentifier $CLIENT_ID

# Set Install Apple Updates
defaults write $MUNKI_FILE InstallAppleSoftwareUpdates -bool true                                                                 