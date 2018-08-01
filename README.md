# Configuration

Configures my Razer Blade Stealth (Private Laptop).

## Installation

Run the following commands:
```shell
$ cd `~/.config` && \
  git init . && \
  git remote add origin git@github.com:escodebar/config.git && \
  git fetch && \
  git checkout DECTRIS
```

## Settings

### Editorconfig

The `.editorconfig` file is never read out of `.config`.
Create a symbolic link to tell your editor to use this configuration:

```shell
$ ln -s ~/.config/editorconfig/config ~/.editorconfig
```
