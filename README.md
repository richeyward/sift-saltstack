[![Logo](https://digital-forensics.sans.org/images/sift.png)

# SIFT SALTSTACK
This is a **WORK IN PROGRESS** project to try to migrate the SIFT workstation to Ubuntu 18.04.  Consider this broken,

Please see the accompaniment project [sift-cli](https://github.com/richeyward/sift-cli) for initial installation. The sift-cli package will install the latest version of this package.

### Testing
**BEWARE:** This is a work in progress and is nowhere near to being finished.

Ensure that salt is already installed.

Once done, run the following in this directory:

`sudo salt-call -l debug --local --state-output=terse --out=yaml state.apply sift.vm pillar={sift_user: "$USER"}`

The $USER is the current username.
