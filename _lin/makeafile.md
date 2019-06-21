---
layout: wide
title: Make a File
subtitle: with random contents
description: how to make a dummy file of a specific size
---

If you ever need to create a dummy file of a very specific size of testing purposes (for example need to see if an upload/download code is working with large files), here is a tiny script to do this:

<script src="https://gist.github.com/maciakl/8f45b60d409f3e2045582cac04378ab7.js"></script>

The file contents are just random garbage generated by `/dev/urandom` so you don't have to worry about accidentally uploading a file with confidential or personal information somewhere.