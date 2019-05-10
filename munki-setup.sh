#!/bin/bash

MUNKI_FILE=/Library/Preferences/ManagedInstalls.plist

# ClientIdentifier: mds_var1

CLIENT_ID=$mds_var1
REPO_URL=$mds_var6

# Set Client Identifier
defaults write $MUNKI_FILE ClientIdentifier $CLIENT_ID

# Software Repo URL
defaults write $MUNKI_FILE SoftwareRepoURL $REPO_URL

# Set Install Apple Updates
defaults write $MUNKI_FILE InstallAppleSoftwareUpdates -bool true                                                                 