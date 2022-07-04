---
layout: wide
title: Decrypt Your Drive
subtitle: Remove Bitlocker Encryption
description: quick and easy way to decrypt a Bitlocker drive
---

### Problem

Need to remove decryption from a drive locked or encrypted by Bitlocker:


### Solution

Run the following:

    manage-bde -off c:

Change `c:` to appropriate drive.

You can check the status of the process by running:

    manage-bde -status


### Helper Script

Interactive helper script that will initiate decryption and then monitor the progress:

<script src="https://gist.github.com/maciakl/3a88e4499ae2867a21c22cf91a9e3841.js"></script>