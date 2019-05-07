# So it's not actually a partition in APFS. It's a new Volume.

# Create the Volume if requested
if [ $mds_var6 == "1" ]; then
    # Grab device id from diskutil list
    DISK=$(diskutil list | grep "synthesized" | cut -c 1-10)

    # Create APFS Volume. No size needed
    diskutil apfs addVolume $DISK APFS Users

    # Move folders over to new volume
    mv /Volumes/Mirmantosh/Users/* /Volumes/Users/
    rm -rf /Volumes/Mirmantosh/Users
    ln -s /Volumes/Users /Volumes/Mirmantosh/Users
    
else
    echo "No User Volume created"
    exit 0
fi