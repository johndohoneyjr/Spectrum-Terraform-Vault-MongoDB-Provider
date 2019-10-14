# Terraform Demo

## Environment

The MongoDB Atlas provider requires authentication, using the Public Key:Private Key in the MongoDB Provider.  Please use these  values in the following Environment as a sample for your Linux environment.

```
MONGODB_ATLAS_PRIVATE_KEY=47deadd0-ff04-dead-8839-1bc2dead3e1
MONGODB_ATLAS_PUBLIC_KEY=ddeadehe
```

Place these in your .bashrc or .bash_profile depending on the flavor of Linux/Mac OSX you are using.  Once these are loaded:

## Test your environment

#Environment Testing
env grep mongoDB

## Download Terraform

Go to: https://releases.hashicorp.com/terraform/0.12.9/
Download the version of Terraform the works on your architecture.  In the case of MAC OSX, download: terraform_0.12.9_darwin_amd64.zip

## Install Terraform

cd ~/Downloads
uzip terraform_0.12.9_darwin_amd64.zip

Typically on Mac OSX, 3rd party binaries are stored in /usr/local/bin
sudo su
mv ~/Downloads/terraform /usr/local/bin/terraform
exit --- exit the Super User shell

## Test installation
```
which terraform
/usr/local/bin/terraform

terraform version
Terraform v0.12.9
```

## Get a local copy of the repo
git clone https://github.com/johndohoneyjr/Spectrum-Terraform-Vault-MongoDB-Provider.git

  
