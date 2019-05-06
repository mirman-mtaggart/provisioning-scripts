# So it's not actually a partition in APFS. It's a new Volume.

# Create the Volume
if [ $mds_var6 == "1" ]; then
    VOLUME=$(diskutil | grep "Mirmantosh" | awk "{print $(NF)}")
    echo "Creating new Volume Users at $VOLUME"
    diskutil addVolume $VOLUME APFS "Users"
else
    echo "No User Volume created"
    exit 0
fi