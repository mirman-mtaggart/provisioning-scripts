#!/bin/bash

MUNKI_FILE=/Library/Preferences/ManagedInstalls.plist

# ClientIdentifier: mds_var1

# Set Client Identifier
defaults write $MUNKI_FILE ClientIdentifier $mds_var1

# Set Install Apple Updates
defaults write $MUNKI_FILE InstallAppleSoftwareUpdates -bool true