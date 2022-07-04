---
layout: wide
title: Change Registered Organization
subtitle: and Registered Owner
description: changing Registered Owner and Registgered Organization values in Win 10
---

### Problem

Want to change the Registered Owner and Registered Organization values. These show up when you run `winver` and are also used by various installers, and apps to create user name defaults.


### Solution

Navigate to the following registry key:

    HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion

There change the `RegisteredOwner` and `RegisteredOrganization` values.

### Helper Script

Here's a helper script:

<script src="https://gist.github.com/maciakl/0898c9eb995531883fdf47a4f25e6d60.js"></script>
