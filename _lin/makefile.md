---
layout: wide
title: Makefile for Web Projects
subtitle: Deploy with Rsync
description: my standard Makefile for web projects
---

Whenever I set up a new static website, and need a quick way way to deploy my changes to the server I use this makefile. It utilizes `rsync` to upload only the files that have changed since the last sync.

If you are using a static site builder like Jekyll you can add `jekyll build` under the build target.

<script src="https://gist.github.com/maciakl/a0394de26b218f4e49cd.js"></script>
