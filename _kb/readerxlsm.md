---
layout: wide
title: Adobe Reader DC blocks XLSM
subtitle: how do I disable that
description: open Excel attachments from Adobe Reader
---

### Problem

Received a PDF file with embedded Excel attachments, but Adobe Reader does not allow me to open them.

### Cause

Adobe security settings block opening Excel files (especially XLSM).


### Solution

You have to fix it via registry:

1. Open `regedit`
1. Navigate to `HKLM\SOFTWARE\Policies\Adobe\Adobe Rreader\DC\FeatureLockdown\cDefaultLaunchAttachmentPerms`
1. Double click the key labeled `tBuiltInPermList`
1. Append the following to the end: `|.xlsm:2|.xlsx:2|.xls:2`

Make sure each extension is listed only once or it might not work. It might be a good idea to copy and paste the entire list into notepad and edit it there.
