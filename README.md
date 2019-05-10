# provisioning-scripts

Scripts for provisioning Mac laptops.

For use with [Mac Deploy Stick](https://twocanoes.com/products/mac/mac-deploy-stick/). Put these scripts in the scripts folder when creating a deployment.

## Included Scripts

* `munki-setup.sh`: Configures Munki client based on given `ClientIdentifier`
* `create-user.sh`: Creates user based on env variables
* `create-user-volume.sh`: Creates a new APFS volume for User data. Not a hard partition, so actually easier to work with. 

## MDS Variables

The scripts above are written to work with specific environment variables provided by the MDS workflow. They are:

* `mds_var1`: ClientIdentifier
* `mds_var2`: New username
* `mds_var3`: New user fullname
* `mds_var4`: New user password
* `mds_var5`: New user admin? (`1` or `0`)
* `mds_var6`: SoftwareRepoURL for Munki
* `mds_var7`: Wi-Fi SSID
* `mds_var8`: Wi-FI password

