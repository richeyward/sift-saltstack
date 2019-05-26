[![Logo](https://digital-forensics.sans.org/images/sift.png)

# SIFT SALTSTACK
This is a **WORK IN PROGRESS** project to try to migrate the SIFT workstation to Ubuntu 18.04.  Consider this broken,

Please see the accompaniment project [sift-cli](https://github.com/richeyward/sift-cli) for initial installation. The sift-cli package will install the latest version of this package.

### Testing
**BEWARE:** This is a work in progress and is nowhere near to being finished.

Ensure that salt is already installed.

Once done, run the following in this directory:

`sudo salt-call -l profile --local --file-root ./ state.apply sift.vm pillar='{"sift_user": "$USER"}'`

The $USER is the current username.

## Packages
One thing that I personally found frustrating about SIFT was the lack of documentation of what tools were available.  Not a negative criticism but as I add packages to this repo, I will list them here. I will aim to port most or all packages from the original project.

### Repos
- [Gift](https://launchpad.net/~sift/+archive/ubuntu/stable) - Glorious Incident Feedback Tools PPA
- [SIFT](https://launchpad.net/~sift/+archive/ubuntu/stable) - SIFT PPA
- Ubuntu Universe - Allows installation of extra Ubuntu packages
