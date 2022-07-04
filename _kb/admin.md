---
layout: wide
title: Enable Administrator Account
subtitle: from the command line
description: enable the built in Administrator account
---

### Problem

Need to enable the built-in Administrator account. It is disabled by default.


### Solution

You can do it from the command line:

```batch
    net user Administrator /active:yes
    net user Administrator NewAdminPasswordHere
```

You can now log in as Administrator.

### Helper Script

Here's an interactive helper script:

<script src="https://gist.github.com/maciakl/7da540c8b11ee65f4e87925dd03304b2.js"></script>