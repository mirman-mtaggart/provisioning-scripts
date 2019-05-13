#!/bin/bash

MUNKI_FILE=/Library/Preferences/ManagedInstalls.plist

# CHANGE THIS
CLIENT_ID="my_identifier"

# Set Client Identifier
defaults write $MUNKI_FILE ClientIdentifier $CLIENT_ID

# Set Install Apple Updates
defaults write $MUNKI_FILE InstallAppleSoftwareUpdates -bool true                                                                 