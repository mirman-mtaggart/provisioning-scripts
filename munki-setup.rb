#!/usr/bin/ruby

MUNKI_FILE="/Library/Preferences/ManagedInstalls.plist"
CLIENT_IDENTIFIER = ENV["mds_var1"]
REPO_URL = ENV["mds_var7"]

# Set Client Identifier
`defaults write #{MUNKI_FILE} ClientIdentifier #{CLIENT_IDENTIFIER}`

`defaults write #{MUNKI_FILE} SoftwareRepoURL #{REPO_URL}`

# Set Install Apple Updates
`defaults write #{MUNKI_FILE} InstallAppleSoftwareUpdates -bool true`