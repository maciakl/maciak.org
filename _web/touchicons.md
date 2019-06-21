---
layout: wide
title: Making Touch Icons
subtitle: Removing PNG Transparency
description: how to remove png transparency for touch icons
---

Here is an `imagemagic` command to remove transparency from a PNG image. Useful for converting transparent icons to Apple touch icons (iOS doesn't handle png transparency that well for home screen icons - they turn black).

    convert -flatten apple-touch-icon.png apple-touch-icon-nontransparent.png

Requires `imagemagic` package, naturally.
