---
layout: wide
title: Busybox
subtitle: use only some commands
description: how to use only some commands from busybox
---

### Problem

You want to use some commands from BusyBox but you don't want to install shims for every single one.

### Solution

You can symlink only the commands you want.

Note, you must put these links in a directory that is in your PATH.

Use `mklink` command like so:

```batch
mklink tar.exe busybox.exe
mklink gzip.exe busybox.exe
mklink gunzip.exe busybox.exe
mklink bzip2.exe busybox.exe
```

Note: on Windows 10, you need to be admin to do this. The `mklink` command does not work in Powershell so you need to drop down to `cmd.exe` to run it.
