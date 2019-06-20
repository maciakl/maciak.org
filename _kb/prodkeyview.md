---
layout: wide
title: Find Office Product Key
subtitle: from the command line
description: how to find the product key of installed copy
---

### Problem

Need to find out the product key of the installed Office 2016 instance.


### Solution

You can do it from the command line:

```batch
    cd "\Program Files\Microsoft Office\Office16\"
    cscript OSPP.VBS /dstatus
```

This will show you the last 5 digits of the installed key.

