---
layout: wide
title: Enable Previous Versions
subtitle: Shadowcopy on your desktop
description: how to set up shadowcopy on your desktop
---

### Problem

Previous Versions tab in Windows has no shadow copy snapshots.

### Cause

Shadowcopy is disabled by default on the desktop.

### Solution

Use task scheduler to run the following command at a desired schedule:

    wmic shadowcopy call create Volume='C:\'

Each time this is run it will create a shadowcopy snapshot allowing you to restore accidentally deleted or overwritten files.

### Helper Script

You can use this interactive helper script to automatically create a scheduled task that will run the above command every day at 1pm.

<script src="https://gist.github.com/maciakl/16b248c1b7ccf21f9dc04a1d9744e74b.js"></script>
