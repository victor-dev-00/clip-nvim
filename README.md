

## Prerequisites

- This script requires `wget` and `unzip` utilities to be installed on your system. You can install them using your package manager.

## Installation

The script will perform the following actions:

- Download the latest release of win32yank from its GitHub repository.
- Extract the downloaded zip file.
- Move the `win32yank.exe` executable to `/usr/local/bin`.
- Grant executable permissions to the executable.
- Clean up temporary files.

## Note

- This script requires sudo privileges to move the executable to `/usr/local/bin` and grant it executable permissions.
- After installation, you can use the `win32yank.exe` command in your terminal.

For more information about win32yank, visit the [GitHub repository](https://github.com/equalsraf/win32yank).


# Win32yank Installation Script

This script automates the installation process for win32yank, a tool that enables clipboard integration between Windows and Linux systems, particularly useful for WSL (Windows Subsystem for Linux) or Cygwin users.

## Table of Contents

- [Overview](#overview)
- [Usage](#usage)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Note](#note)

## Overview

Win32yank is a utility that allows you to interact with the Windows clipboard from a Unix-like command line. It enables copying and pasting between Windows applications and Linux terminals seamlessly. This script simplifies the installation process by downloading, extracting, and setting up win32yank for immediate use.

## Usage

1. Ensure you have `wget` and `unzip` installed on your system.

2. Download the script:
https://github.com/victor-dev-00/clip-nvim/blob/main/install.sh


3. Make the script executable:

chmod +x install_win32yank.sh

4. Execute the script:

./install.sh


Clipboard tweak for neovim.
