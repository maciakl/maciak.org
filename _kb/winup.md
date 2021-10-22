---
layout: wide
title: Defferr Windows Update
subtitle: prevent feature updates
description: prevent installing feature updates
---

### Purpose

This document outlines how to temporarily defer installation of Windows Feature Updates. This is not as useful as in the past, as Microsoft has switched to a more sane update schedule and now only forces Feature Updates when your current version reaches EOL, and only updates to the next version in sequence, rather than to the latest.

Nevertheless, if you would like some extra control over when Windows 10 does feature updates, this is for you.

### Procedure

To defer feature updates for up to a year:

1. Run `gpedit.msc`
1. Choose <em>Computer Configuration</em>
1. Go to <em>Admin Templates &rarr; Windows Components &rarr; Windows Update &rarr; Windows Update for Business</em>
1. Open <em>Select when Preview builds and Feature Updates are Received</em>
1. Set it to `Enabled`
1. Choose `Semi-Annual Channel` from the drop down box
1. In the number box type in `365`
1. Click <em>Apply</em>


1. Open <em>Select the target Feature Update version</em>
1. Set it to `Enabled`
1. In the box type in the desired feature update version (eg. `1909`)
1. Click <em>Apply</em>
