---
layout: wide
title: Grab
subtitle: simple installer
description: simple installer script
---

### What is grab?

Grab is a simple bash script aiming to facilitate "one-liner" installation of single executable programs from github.

Imagine the following scenario: you are setting up a server, and want to quickly install couple of useful tools such as `eza`, `fzf`, `ripgrep` and `bat`. Problem is, this is Debian Stable and none of these are available via `apt`, or if they are, it's an ancient, primordial version with half the features missing.

I wrote this script because I wanted around 10% of the functionality of [fox](https://www.getfox.sh/) with none of the hassle of having to install `gh` and having to authenticate against github servers.


### Usage

Grab takes 2 arguments:

1. The repository in the format `user/repo`
3. (optional) The name of the executable within the archive

You can skip the second argument, in which case it will default to the name of the repository (eg. `fzf`).

The installed program must be:

- hosted on github
- the github repository has to have a published release
- the program must be a single executable file
- the archive in the release must be either a `.tar.gz` or a `.zip` file

It's not guaranteed to work with every repository, but it works with the handful I have tried. 

Grab is by no means production ready. It's just something I put together to make my life easier. Use it at your own risk.

Examples:

```bash
    grab junegunn/fzf
    grab eza-community/eza
```
Grab is not smart enough to figure out which released version is correct for your platform, so it will list the available files and ask you which one you want.

![grab example](/images/grab.jpg)

You are the user, you press the buttons.

If you installed the wrong version, just run the command again. Grab will happily overwrite the previous version.

### Dependencies

Grab requires `wget`, `curl`, `unzip` and `tar`. Most of these should be installed by default. If you are missing them, you can install them using your package manager. For example, on Debian-based systems you can run:

```bash
sudo apt install wget curl unzip tar
```


### Uninstalling Programs Installed with Grab

Grab installs programs in `/usr/local/bin/`. To uninstall a program called `foo` just run:

```bash
    sudo rm -f /usr/local/bin/foo
```


### Installing / Upgrading

To install and/or upgrade `grab`, you can use the following command:

```bash
sudo wget -qN https://maciak.org/grab -O /usr/local/bin/grab \
&& sudo chmod +x /usr/local/bin/grab
```


### Source Code

Here is the source code for `grab` in it's entireity:

<script src="https://gist.github.com/maciakl/a3b689230b155227abeb35a462cb6478.js"></script>

If this script gets too big I will set up a proper repository.

