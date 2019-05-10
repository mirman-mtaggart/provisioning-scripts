# So it's not actually a partition in APFS. It's a new Volume.

# Create the Volume if requested
if [ $mds_var6 == 1 ]; then
    # Grab device id from diskutil list
    DISK=$(diskutil list | grep "synthesized" | cut -c 1-10)

    # Create APFS Volume. No size needed
    diskutil apfs addVolume $DISK APFS Users

    # Move folders over to new volume
    mv /Users/* /Volumes/Users/
    rm -rf /Users
    ln -s /Volumes/Users /Users
    exit 0
else
    exit 0
fi