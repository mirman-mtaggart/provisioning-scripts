#!/usr/bin/ruby

# So it's not actually a partition in APFS. It's a new Volume.

create_volume? = ENV["mds_var6"] == "1" ? true : false
USERS_VOLUME = "Users"
OS_VOLUME = "Mirmantosh"

# Create the Volume if requested
if create_volume?
    # Grab device id from diskutil list
    disk = `diskutil list | grep "synthesized" | cut -c 1-10`

    # Create APFS Volume. No size needed
    `diskutil apfs addVolume #{disk} APFS Users`

    # Move folders over to new volume
    `mv /Volumes/#{OS_VOLUME}/Users/* /Volumes/#{USERS_VOLUME}/`
    `rm -rf /Volumes/#{OS_VOLUME}/Users`
    `ln -s /Volumes/#{USERS_VOLUME} /Volumes/#{OS_VOLUME}/Users`
    exit true
else
    echo "No User Volume created"
    exit true
end