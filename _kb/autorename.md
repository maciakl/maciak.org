---
layout: wide
title: Autorename
subtitle: Change Computer Name to Match Service Tag
description: a script to change computer name to it's Dell servicetag
---

### Problem

Need a script that automatically changes the Windows computer name to match it's Dell Service Tag. Dell Service Tags are pretty unique and many people use them for asset tracking.

### Solution

To find your Dell Service Tag run:

    wmic bios get serialnumber

To rename your computer from powershell:

   Rename-Computer -NewName SERVICETAG -Restart

If you want to combine the two:

    for /f "skip=1" %%i in ('wmic bios get serialnumber') DO (	
		set SERVICETAG=%%i
	)
    set SERVICETAG=%SERVICETAG:~0,7%
    powershell -Command "Rename-Computer -NewName %SERVICETAG% -Restart"


### Helper Script

Here's an interactive helper script that automates this process:

<script src="https://gist.github.com/maciakl/623f2a0dda4ee41c5910e5f32474a65c.js"></script>
