---
layout: wide
title: Chezmoi
subtitle: dotfile sync tool
description: manage your dotfiles with chezmoi
---

### Initializing Chezmoi on New Machine

Install Chezmoi:

```bash
    sh -c "$(curl -fsLS get.chezmoi.io)"
```

Initialize Chezmoi with your dotfiles repository:


```bash
    chezmoi init git@github.com:username/dotfiles.git
```

Then:

```bash
    chezmoi apply
```
### Updating Chezmoi Repository

To update your Chezmoi repository with new changes, you can use the following commands:

```bash
    chezmoi re-add .config/file
    chezmoi cd
    git add .
    git commit -m "updated"
    git push
```
