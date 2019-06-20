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
