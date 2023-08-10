# packer
Packer is an open-source tool created by HashiCorp that automates the creation of identical virtual machine images across various platforms from a single source configuration. It's used by developers and system administrators to streamline the deployment and scaling of applications in cloud or virtualized environments.

## Ubuntu: basic cloud image with K3s installed
This image is built with Qemu, a virtualizer that allows for hardware virtualization. This lets us install K3s components on top of the base Ubuntu image and build a new image from there. 

### Build
To build the image, make sure those packages are installed:  
- packer
- qemu-utils
- qemu-system
- ovmf
- cloud-image-utils


Once in the `Ubuntu` directory, run the following commands.

```
# To install packer plugins used in the template

packer init ubuntu-cloudimg.pkr.hcl
```

```
# To verify that the template can be built

packer validate ubuntu-cloudimg.pkr.hcl
```

```
# To build the image
# You can specify the ubuntu version, the kernel and the output file name by using '-var variable=value'.
# See variables in the 'ubuntu-cloudimg.pkr.hcl' file for more options.

PACKER_LOG=1 packer build -var kernel=linux-lowlatency ubuntu-cloudimg.pkr.hcl
```

This command should create a file.tar.gz that represents the image built and compressed.