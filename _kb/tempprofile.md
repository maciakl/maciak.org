---
layout: wide
title: Fix Temporary Profile
subtitle: get back user data
description: fix issue with windows loading temp profile on boot
---

### Problem

Windows 7 boots into a temporary profile. User can't find their files and shortcuts.

### Cause

Corrupted registry hive.


### Solution

Here is a quick fix:

1. Open `regedit`
1. Navigate to `HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList`
1. Find the profile with `.bak` extension (that's the original)
1. There's the same key without `.bak` - that's the temp profile. Rename it to `.new`
1. Remove the `.bak` from the original profile
1. Log out and log back in

If this works, run `chkdsk` next to check for disk issues.
