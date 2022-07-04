---
layout: wide
title: Enable Sudo
subtitle: on systems that ship without it
description: how to enable sudo on systems that don't have it
---

### Problem

You might be used to a `sudo` based workflow. Some systems, like Ubuntu, ship with it enabled and configured by default. Others, like Debian, do not.

### Solution

Here is how get `sudo` working on a system that does not have it.

First, switch to root:

    su -

Next, install the `sudo` package using `apt`, `rpm` or other package manager. On `apt` based systems do:

    apt update
    apt install sudo

Next you will need to add yourself to the sudoers group:

    usermod -aG sudo username

Now completely log out, and log back in for this to take effect.

You should now be able to use `sudo` with your account. 

You will need to add any other users who need `sudo` access to the `sudo` group as shown above.