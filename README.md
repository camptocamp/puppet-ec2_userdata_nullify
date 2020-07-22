# Nullify `ec2_userdata` fact


## What does this do?

This Puppet module deploys a Facter plugin that overrides
the `ec2_userdata` fact with an empty hash value.


## Why?

EC2 User Data usually contains binary data (gzipped) when using cloud-init.
This makes Puppet 5 fail to upload facts since it now uses pure JSON instead
PSON.

Plus, who needs a fact that contains 16kB of gzipped script anyway?
