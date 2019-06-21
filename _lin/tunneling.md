---
layout: wide
title: SSH Tunneling
subtitle: Because I always forget
description: quick scripts to set up and use an ssh tunnel
---

### What is SSH Tunneling

It's a way of channeling your network traffic on a specific port through an encrypted ssh session via a third server. There are rare occasion where you absolutely want or need this, but will forget how to do it in between. Hence these scripts.

### When do I need this?

Here is a use case scenario: you're at work and need to ssh into your personal web server, but there is a corporate firewall in the way. It blocks all traffic, except on port 80 and 443. Shit out of luck? Nope.

If you are clever, you have probably envisioned this, and set up a box at home (or spooled up a VM somewhere outside work) that listens for ssh connections on port 443, so you can ssh into that, and from your server. That's good and all, but what if you need to scp some files to it?

Enter the tunnels: you establish an ssh tunnel to your home box (let's call it a bounce server) and then you can use that tunnel to use and  ssh, scp directly.

### Give me the scripts already

Here they are:

<script src="https://gist.github.com/maciakl/21bef6e2679d7969db14e701fb09cc75.js"></script>

### How to I use this

First you need to create a tunnel. Going with our use case, lets say you want to access `destination.host.org` and you have already set up `home.box.net` at home to listen for ssh connections on port 443. Open a terminal window and create a tunnel:

    tunnel-create home.box.net destination.host.org 443

To ssh into your destination, just use:

    tunnel-ssh myusername

Let's say you have `file.txt` you want to upload to `/var/www/` on your destination:

    tunnel-put ./file.txt /var/www myusername

If you want to grab same file from the destination:

    tunnel-get /var/www/file.txt . myusername

In all of the above you can skip the username if it happens to be the same on the destination box as it is on your current machine.
