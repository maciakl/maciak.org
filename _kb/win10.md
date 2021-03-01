---
layout: wide
title: Installing Windows 10
subtitle: on an old Windows 7 laptop
description: best way to fix up old junker
---

### Problem

You have an old Windows 7 computer and you would like to cleanly install Windows 10 on it.

### Preparation

You do not need to buy a Windows 10 license, or installation media. This is Microsoft's little open secret, but any valid Windows 7 key will work as Windows 10 key, and activate as genuine windows without any issue. All you need is the your old Windows 7 activation key.

Most Windows 7 laptops have it printed on a sticker located on the bottom or back of the computer. Some laptops have it hidden behind a latch on the bottom. Laptops with removable batteries often have this sticker attached inside the battery compartment and you will have to remove the battery to see it. Laptops without removeable battery might have it attached on the inside of the bottom case (in this case you will have to unscrew and remove it).

### Solution



1. Get a [Cheap USB Stick]
1. Download the [Installation Media Creation Tool] from Microsoft
1. Use the Media Creation Tool to create a Windows 10 installer on your USB stick
1. Put the USB stick in the old computer and boot it up
1. You might need to change boot order in BIOS or access boot selection menu (on dell computers this is done by pressing F12 at boot time)
1. When asked for license key, enter your Windows 7 key
1. Follow prompts to install windows

This should get you a genuine Windows 10 install.

By default Microsoft only makes the latest version of Windows 10 available via the Media Creation Tool. If you need to make installation media for a specific windows version (eg. 1909) for compatibility reasons, you can use the [Media Creation Tool Wrapper] script. It will allow you to choose which version you want to use.



[Cheap USB Stick]: https://amzn.to/3kvsdhb
[Installation Media Creation Tool]: https://www.microsoft.com/en-us/software-download/windows10
[Media Creation Tool Wrapper]: https://gist.github.com/AveYo/c74dc774a8fb81a332b5d65613187b15