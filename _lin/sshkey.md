---
layout: wide
title: Set Up SSH Key Access
subtitle: on the remote machine
description: easy way to set up ssh key access
---

## Normal Way

To easily set up up a ssh-key access on a remote machine:

    ssh-copy-id user@host

If the ssh is running on a weird port (say 1234) you can do this instead:

    ssh-copy-id "user@host -p 1234"  


## Windows without WSL

If you are on Windows and for some (silly corporate security) reason cannot install WSL:

    cat ~\.ssh\id_rsa.pub | ssh user@server "cat >> ~/.ssh/authorized_keys"

