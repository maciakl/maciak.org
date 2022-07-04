---
layout: wide
title: Enable Storage Sense
subtitle: Global Force Enable
description: force enabling Windows 10 Storage Sense 
---

### Problem

Want to force enable Storage Sense for all users and disable their ability to switch it off:


### Solution

You will want to navigate to the following registry key:

    HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageSense

There, create a new `REG_DWORD` value named `AllowStorageSenseGlobal` and set it to `1`.

### Helper Script

Here's a helper script to automate this:

<script src="https://gist.github.com/maciakl/686a1f9b6bcc1d7d33b88320c2a1e094.js"></script>
