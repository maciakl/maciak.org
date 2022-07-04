---
layout: wide
title: Bypass Powershell Policy Restrictions
subtitle: Sometimes you need this
description: bypass powershell policy restrictions
---

### Problem

Need to run a Powershell script on user's machine one time, without permanently changing their policy restrictions. 

### Solution

Make a batch file, and name it the same as your ps1 script, and put this inside:

    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%~dpn0.ps1'"

This will bypass the execution policy for this one script. Obviously, the batch script has to be in the same folder ans the ps1 script.

