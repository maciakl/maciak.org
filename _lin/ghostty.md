---
layout: wide
title: Ghostty and SSH
subtitle: make it look right
description: make ssh sessions look right in Ghostty
---

### Problem

When using Ghostty, SSH sessions look like shit.

### Solution

Export the term info to the remote server:

```bash
    infocmp -x xterm-ghostty | ssh YOUR-SERVER -- tic -x -
```
