- [Overview](#overview)
  - [Installation](#installation)
- [Xcode Tools](#xcode-tools)
  - [`xcode-select`](#xcode-select)
  - [Command Line Tools](#command-line-tools)
- [Resources](#resources)

# Overview

## Installation

After installation, configure active developer directory to Xcode:
`xcode-select --switch /Applications/Xcode.app/Contents/Developer`

# Xcode Tools

## `xcode-select`

- `xcode-select --print`: prints the current active developer directory
- `xcode-select --switch <dir>`: switch current active developer directory
- `xcode-select --install`: install Xcode command line tools

## Command Line Tools

```
xcode-select --install
```

Xcode command line tools is a small package that enable desktop development
without installing Xcode

- **If Xcode is installed** and the active developer directory has been
  configured to using Xcode's installation, **then there is no need to install
  command line tools**
- Update managed by System Preference

# Resources

- [Building from the Command Line with Xcode FAQ](https://developer.apple.com/library/archive/technotes/tn2339/_index.html)
