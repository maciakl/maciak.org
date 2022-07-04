---
layout: wide
title: Drop UAC in Windows 10
subtitle: no, yea, but like for real
description: how to really drop down UAC in Windows 10
---

### Problem

Need to *really* drop UAC in Windows 10 to install big boy security software such as Check Point Endpoint with FDE.

### Cause

In Windows 10 the UAC slider does not actually disable all the protections. Sometimes you have to go deeper.


### Solution

Here is how you go deeper

1. Open `regedit`
1. Navigate to `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System`
1. Double click the key labeled `EnableLUA`
1. Change the value to `0`
1. Reboot

Make sure you don't leave it in this state. Do what you need to do, then slide that UAC slider all the way up on your way out.

### Helper Script

<script src="https://gist.github.com/maciakl/4e5b48291bf52802e190492f15c95d5a.js"></script>