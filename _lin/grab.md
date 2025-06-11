---
layout: wide
title: Grab
subtitle: simple installer
description: simple installer script
---

### What is grab?

Grab is a simple bash script aiming to facilitate "one-liner" installation of single executable programs from github.

Imagine the following scenario: you are setting up a server, and want to quickly install couple of useful tools such as `eza`, `fzf`, `ripgrep` and `bat`. Problem is, this is Debian Stable and none of these are available via `apt`.

I wrote this script because I wanted around 10% of the functionality of `fox` without having to install `gh` and authenticating.


### Usage

Grab takes 3 arguments:

1. The repository in the format `user/repo`
2. The name of the archive file to download
3. The name of the executable within the archive

You can skip the last argument, in which case it will default to the name of the repository (eg. `fzf`).

The installed program must be:

- hosted on github
- the github repository has to have a published release
- the program must be a single executable file
- the archive in the release must be either a `.tar.gz` or a `.zip` file

Examples:

```bash
    grab maciakl/weather weather_lin.zip weather
    grab maciakl/weather weather_lin.zip
```
### Installing

To install `grab`, you can use the following command:

```bash
sudo wget -qN \
https://gist.githubusercontent.com/maciakl/a3b689230b155227abeb35a462cb6478/raw/a0b75862713e518cf595f3623278fbba38a850e4/grab \
-O /usr/local/bin/grab \
&& sudo chmod +x /usr/local/bin/grab
```

### Code

Here is the code for `grab` in it's entirety:

<script src="https://gist.github.com/maciakl/a3b689230b155227abeb35a462cb6478.js"></script>

If the script starts getting to big, I may create a repository for it.



