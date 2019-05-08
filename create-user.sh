#!/bin/bash

# Create random uid
UID_FLOOR=500
UID_CEILING=800
UID_RANGE=$(($UID_CEILING-$UID_FLOOR+1))
RESULT=$RANDOM
let "RESULT %= $UID_RANGE"
RESULT=$(($RESULT+$UID_FLOOR))

USERNAME=$mds_var2
REALNAME=$mds_var3
PASSWORD=$mds_var4
ADMIN=$mds_var5

dscl . -create /Users/$USERNAME
dscl . -create /Users/$USERNAME UserShell /bin/bash
dscl . -create /Users/$USERNAME RealName "$REALNAME"
dscl . -create /Users/$USERNAME UniqueID $RESULT
dscl . -create /Users/$USERNAME PrimaryGroupID 1000
dscl . -create /Users/$USERNAME NFSHomeDirectory /Users/$USERNAME
dscl . -passwd /Users/$USERNAME $PASSWORD
dscl . -append /Groups/_lpadmin GroupMembership $USERNAME

if [ $ADMIN == 1 ]; then
    dscl . -append /Groups/admin GroupMembership $USERNAME
fi