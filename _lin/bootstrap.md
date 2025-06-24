---
layout: wide
title: Linux Bootstrap
subtitle: from 0 to functonal
description: first things to do on a new linux box
---

This is for me more than it is for you.

### Install Grab

Install [grab](https://github.com/maciakl/grab) to help you with the initial setup:

```bash
wget -qN https://github.com/maciakl/grab/releases/latest/download/grab.zip \
-O /tmp/grab.zip \
&& unzip -q -o /tmp/grab.zip -d /tmp \
&& chmod +x /tmp/grab \
&& sudo mv /tmp/grab /usr/local/bin/grab
```

### Install Essential Tools

Install some essential tools that will help you manage your system:

```bash
grab sharkdp/fd
grab sharkdp/bat
grab junegunn/fzf
grab eza-community/eza
grab burntsushi/ripgrep rg
```

### Some Optional Tools

You can also install some optional tools that might be useful:

```bash
grab muesli/duf
grab aristocratos/btop
```

### Bashrc Aliases

Create a `.bash_aliases` file with your most commonly used aliases:

```bash
wget https://tinyurl.com/mpa45zpr -O ~/.bash_aliases
```

### Vimrc

Create a `.vimrc` file for Vim configuration:

```bash
wget https://tinyurl.com/y4dbht37 -O ~/.vimrc
```



