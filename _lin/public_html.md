---
layout: wide
title: Public HTML
subtitle: how to enable it
description: how to enable public_html personal web pages
---

### Problem

You want to enable per user web pages hosted from `~/public_html` when using Apache.

### Solution

Enable the `userdir` package:

     sudo a2enmod userdir

Restart the Apache server. From this point on, every user will be able to create a `public_html` directory and it will be hosted at the address `http://servername/~username`.