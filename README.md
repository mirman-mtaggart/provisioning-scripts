# provisioning-scripts

Scripts for provisioning Mac laptops.

For use with [Mac Deploy Stick](https://twocanoes.com/products/mac/mac-deploy-stick/). Put these scripts in the scripts folder when creating a deployment.

## Included Scripts

* `munki-setup.sh`: Configures Munki client based on given `ClientIdentifier`
* `create-user.sh`: Creates user based on env variables
* `create-user-volume.sh`: Creates a new APFS volume for User data. Not a hard partition, so actually easier to work with. 

## MDS Variables

The scripts above are written to work with specific environment variables provided by the MDS workflow. They are:

### Faculty

* `mds_var1`: New username
* `mds_var2`: New user fullname
* `mds_var3`: New user password
* `mds_var4`: New user admin? (`1` or `0`)

### Student

* `mds_var1`: New username
* `mds_var2`: New user fullname
* `mds_var3`: New user password

Other variables can be configured through the MDS Workflow. 