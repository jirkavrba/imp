# AURA

AUR Assistant \
a ruby assistant for the [Arch User Repository](https://aur.archlinux.org)

This tool will assit you when installing packages from the AUR. It does cloning for you, can parse PKGBUILD, and even try to execute it in given environment, yielding feedback on what to target manually.

# Installation
```
curl -s https://raw.githubusercontent.com/patztablook22/aura/master/install.sh | bash
```

## Manually

**Dependencies**
  - ruby
  
**Steps**
  1. dependencies
  2. clone this repository
  3. execute `GIT_BASE/aura`

# Usage
```bash
# for help
./aura --help

# to init environment based on config / CLI options
./aura --init 

# request a package from the AUR if necessary and try to build it
./aura package

# request a package from the AUR and try to (re)build it
./aura package --redo
```

# Config
Default config location: `GIT_BASE/config.txt` \
For the installer, that is `~/.config/aura/config.txt` \
The config file is being parsed using the internal PKGBUILD parser \
hence the syntax; example:

```PKGBUILD
aurs = /my/aur/repositories
pkgs = /my/packages
root = /my/root
redo = false

# not yet implemented
errs = /my/config
```

# Development notes

The complexity of packages this tool can handle shall increase.
