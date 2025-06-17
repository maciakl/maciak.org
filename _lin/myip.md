---
layout: wide
title: What is My Local IP
subtitle: on the nat
description: how to find your local ip
---

### Get Local IP on the CLI

If you need to figure out what your local ip address of the server you just logged into use:

    hostname -I

This will will usually give you either IPv4, IPv6 or both addresses. If you have both, and just need the IPv4 you can use `cut` to get it:

    hostname -I | cut -f 1 -d " "

This will return the first IP on the list which is usually the IPv4, unless you don't have one for some reason.
