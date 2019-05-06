#!/bin/bash

# Create random uid
UID_FLOOR=500
UID_CEILING=800
UID_RANGE=$(($UID_CEILING-$UID_FLOOR+1))
RESULT=$RANDOM
let "RESULT %= $UID_RANGE"
RESULT=$(($RESULT+$UID_FLOOR))

echo $RESULT

dscl . create /Users/$mds_var2
dscl . create /Users/$mds_var2 UserShell /bin/bash
dscl . create /Users/$mds_var2 RealName "$mds_var3"
dscl . create /Users/$mds_var2 UniqueID $RESULT
dscl . create /Users/$mds_var2 PrimaryGroupID 1000
dscl . create /Users/$mds_var2 NFSHomeDirectory /Users/$mds_var2
dscl . passwd /Users/$mds_var2 $mds_var4
dscl . append /Groups/_lpadmin GroupMembership $mds_var1

if [ $mds_var5 == 1 ]; then
    dscl . append /Groups/admin GroupMembership $mds_var1
fi