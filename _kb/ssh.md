---
layout: wide
title: SSH Copy ID
subtitle: for windows
description: how to ssh-copy-id on Windows
---

### Problem

You want to copy your SSH public key to a remote server to enable passwordless login, but you are using Windows.

### Cause

The `ssh-copy-id` command is not available by default on Windows.


### Solution

Do it manually:

    cat ~/.ssh/id_rsa.pub | ssh user@server "cat >> ~/.ssh/authorized_keys"

