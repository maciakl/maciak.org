---
layout: wide
title: Grab
subtitle: simple installer
description: simple installer script
---

### What is Grab?

Grab is a simple bash script aiming to facilitate "one-liner" installation of single executable programs from github.

Imagine the following scenario: you are setting up a server, and want to quickly install couple of useful tools such as `eza`, `fzf`, `ripgrep` and `bat`. Problem is, this is Debian Stable and none of these are available via `apt`, or if they are, it's an ancient, primordial version with half the features missing.

I wrote this script because I wanted around 10% of the functionality of [fox](https://www.getfox.sh/) with none of the hassle of having to install `gh` and having to authenticate against github servers.

![grab screenshot](/images/grab.jpg)

### Where to find Grab?

As of version 0.2.5, Grab is now on Github:

- <a href="https://github.com/maciakl/grab" target="_blank">Grab on Github</a>
