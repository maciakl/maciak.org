---
layout: wide
title: Debian Installation Notes
subtitle: some initial setup notes
description: quick guide for setting up new Debian server
---

### Enable Sudo

By default Debian ships without `sudo` so it needs to be installed as root:

    su -
    apt update
    apt install sudo

Next you will need to add yourself to the sudoers group. Do this while still as root:

    usermod -aG sudo username

You will need to log out of user account and log back in for this to take effect.


### MOTD

You'll probably want a nice MOTD with debian logo. You can use this one:

<script src="https://gist.github.com/maciakl/93e2a445e17f3959e56462063f8474a9.js"></script>

Copy the file to `/etc/update-motd.d/` and rename it to something like `15-logo`.

Log out and log back in to see if it took effect.

### Force Color Prompt

If you're not using your own `.bashrc` but want color prompt on the physical tty then edit the stock `.bashrc` and uncomment the following line:

    force_color_prompt=yes

This will give you color prompt on the physical console.

### Dot Local Host Name Resolution

To make sure your server can be accessed both by `hostname` and `hostname.local` install Avahi:

    sudo apt install avahi-daemon

This will also allow your server to resolve other `.local` addresses on the network.

### Enable NFS Support

To enable NFS install `nfs-common` package:

    sudo apt install nfs-common

To temporarily mount an NFS folder:

    sudo mount -t nfs server.local:/path/to/share /mount/point

To to make it permanent add the following to `/etc/fstab`:

    server.local:/path/to/share /mount/point nfs rw 0 0


### Vim

Install vim:

    sudo apt install vim

If you want a minimal .vimrc you can use this:

<script src="https://gist.github.com/maciakl/6e5c8021b6db6626deb12033d0f5d1a4.js"></script>

To make vim the default editor when you use the `sudoedit` command:

    sudo update-alternatives --config editor

Then choose Vim from the command line.

### Web Server

To install apache:

    sudo apt install apache2

If you want users to be able to have personal websites running out of the `public_html` folder in their home directory:

    sudo a2enmod userdir

The server will then have main website in `/var/www/` and each user will be able to set up their own accessible via `http://servername/~username/`

### Firewall

Next, install a firewall:

    sudo apt install ufw
    sudo ufw allow OpenSSH
    sudo ufw enable

If you are planning to run a web server:

    sudo ufw allow http
    sudo ufw allow https

This will protect all the ports except the ones you allow.

### Print Server

To configure a print server install the `cups` package:

    sudo apt install cups

Note that CUPS requires Apache to run the web based UI.

If you're running headless, you will need to allow remote administration:

    sudo cupsctl --remote-admin --remote-any --share-printers

Also, add yourself to the `lpadmin` group:

    sudo usermod -aG lpadmin username

Finally restart CUPS:

    sudo /etc/init.d/cups restart

This should allow you to log into the web UI on port `631` and add any printers you need.



