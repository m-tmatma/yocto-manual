# yocto-manual

Build yocto reference manual based on the following document.

https://git.yoctoproject.org/cgit.cgi/poky/plain/documentation/README

## How to build yocto manual on docker

1. Run `build-image.sh` which uses `docker` command.
2. Run `pdf.sh` which uses `docker` command.

If your current user is in `docker` group, you can

```
./build-image.sh
./pdf.sh
```

## How to build yocto manual on ubuntu (not docker)

### prepare

```
sudo apt-get update
sudo apt-get install -y git-core \
    make xsltproc fop \
    python3 python3-dev python3-pip python3-setuptools python3-sphinx python3-yaml python3-sphinx-rtd-theme
```

### Get Source code

You can specify branch name by `-b` option. In the following example, `zeus` branch will be checkout initially.

```
git clone -b zeus git://git.yoctoproject.org/poky
```

or

```
git clone -b zeus https://git.yoctoproject.org/git/poky
```

### build

```
cd poky/documentation
make pdf DOC=ref-manual
```

You can get `poky/documentation/ref-manual/ref-manual.pdf`








