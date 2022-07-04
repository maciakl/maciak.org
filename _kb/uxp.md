---
layout: wide
title: Remove Ads
subtitle: and improve user experience
description: remove ads from Windows 10
---

### Problem

Want to improve user experience by removing suggested content and other adds and tweak some core windows UI features.


### Solution

You will need to change the following registry keys:

To hide tips on lock screen navigate to:

    HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager

There change or create a `REG_DWORD` value named `SubscribedContent-338387Enabled` and set it to `0`.

To hide suggestions in Start Menu navigate to:

    HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager

There change or create a `REG_DWORD` value named `SubscribedContent-338388Enabled` and set it to `0`.

To hide the search box in the taskbar, navigate to:

    HKCU\Software\Microsoft\Windows\CurrentVersion\Search

There change or create a `REG_DWORD` value named `SearchboxTaskbarMode` and set it to:

<ul>
    <li>`0` to disable it</li>
    <li>`1` to show the mangnifying glass icon only</li>
</ul>

To disable combining task bar items, navigate to:

    HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced

There, create or change a `REG_DWORD` value named `TaskbarGlomLevel` to:

<ul>
    <li>`1` only combine when taskbar is full</li>
    <li>`2` never combine</li>
</ul>

### Helper Script

Automates the above using my preffered defaults:

<script src="https://gist.github.com/maciakl/199a2c5a6967a2b59142bc6dcc46c97f.js"></script>