## Dotfiles

[![kofi](https://img.shields.io/badge/ko--fi-Support%20me%20-hotpink?logo=kofi&logoColor=white)](https://ko-fi.com/subtlepseudonym)

This project structure is loosely based upon [Zach Holman's dotfiles](https://github.com/holman/dotfiles/).

### Assumptions
These dotfiles are designed to be used with zsh; there are no bash config files and the installation script
uses the `/usr/bin/env zsh` interpreter directive. The install script 

### Installation
Clone this repository and install by running script at `./setup/install`. The script does make the assumption
that the entire repo is available to it, so it may work without having cloned everything, but no guarantees.
This repo is organized into modules, defined by the directories located at project root. During install, modules
can be excluded by using the `--exclude` or `-x` flag followed by the module you wish to exclude.
For example:
```zsh
./setup/install --exclude nvm
```

### How it works
- A workspace directory tree is created
	- This behavior can be disabled with `-x workspace`
- The loki zsh theme is downloaded and copied to `$HOME/.dotfiles/themes`
	- This behavior can be disabled with `-x loki-theme`
- `$HOME/.dotfiles` is created
- Files other than `*.script` are copied to the new dotfiles directory
- Links are created for files matching `*.link` in the home directory with the `.link` suffix removed
- Files matching `*.script` are copied to `$HOME/workspace/script` with the `.script` suffix removed
	- If the `workspace` module is excluded, scripts will be installed to `$HOME/script`
