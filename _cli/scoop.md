---
layout: wide
title: Scoop
subtitle: my personal bucket
description: add my scoop bucket
---

## What is Scoop?

[Scoop](https://scoop.sh/) is a command-line package manager for Windows geared for installing command line applications and utilities.

## What is a Scoop bucket?

Buckets are a way of organizing packages. The Scoop project maintains a default bucket with all their curated apps, as well as a number of auxiliary buckets with various other apps. Anyone can create their own bucket to host their own apps.

Note that personal buckets are not curated or vetted by the Scoop maintainers, so you should only use them if you trust the owner.

## How to add my bucket?

I publish most of my own CLI tools via Scoop. I host them in my own personal bucket.

To add my bucket:

```powershell
scoop bucket add maciak https://github.com/maciakl/bucket
scoop update
```
Once you do this you can install my applications like this:

```powershell
scoop install weather
```



