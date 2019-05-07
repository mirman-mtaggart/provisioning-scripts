#!/usr/bin/ruby

# Create random uid
prng = Random.new
uid = prng.rand(500..800)
username =  ENV["mds_var2"]
realName = ENV["mds_var3"]
password = ENV["mds_var4"]
admin? = ENV["mds_var5"] == "1" ? true : false

`dscl . -create /Users/#{username}`
`dscl . -create /Users/#{username} UserShell /bin/bash`
`dscl . -create /Users/#{username} RealName "#{realName}"`
`dscl . -create /Users/#{username} UniqueID #{uid}`
`dscl . -create /Users/#{username} PrimaryGroupID 1000`
`dscl . -create /Users/#{username} NFSHomeDirectory /Users/#{username}`
`dscl . -passwd /Users/#{username} #{password}`
`dscl . -append /Groups/_lpadmin GroupMembership #{username}`

if admin?
    `dscl . -append /Groups/admin GroupMembership #{username}`
end