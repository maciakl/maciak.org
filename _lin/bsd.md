---
layout: wide
title: BSD Installation Notes
subtitle: Useful Things to Remember
description: some notes for installing / maintaining FreeBSD
---

### Installer

When creating your main user account, make sure to add him to the `wheel` group so he can use `su -` to become root.

### Post Install

If you have not added your user to the `wheel` group, you can do so with the following command:

```sh
pw usermod <username> -G wheel
```

#### Install Sudo

To install `sudo`, run the following command:

```sh
pkg install sudo
```
To configure it run:

```sh
visudo
```
Uncomment the following line and quit:

```sh
%wheel ALL=(ALL) ALL
```

#### Change default shell to `bash`:

First instal `bash`:

```sh
pkg install bash
```

Then change the default shell for your user:

```sh
chsh -s /usr/local/bin/bash <username>
```


#### Install and Configure Avahi

First install the `avahi` and related packages:

```sh
pkg install avahi avahi-libdns avahi-autoipd nss_mdns
```

Add these lines to `/etc/rc.conf`:

```sh
dbus_enable="YES"
avahi_daemon_enable="YES"
```
Change the `hosts` line in `/etc/nsswitch.conf` to:

```sh
hosts: files mdns dns
```

Reboot the system.


##### Ports Method for installing Avahi:

If you prefer to use the ports, you can install Avahi like this:

```sh
cd /usr/ports/net/avahi-app
sudo make config-recursive
sudo make install clean
cd /usr/ports/dns/nss_mdns
sudo make config-recursive
sudo make install clean
```

##### Avahi Conf Files

The main conf files are in:

```sh
/usr/local/etc/avahi/
```
Services are defined in:

```sh
/usr/local/etc/avahi/services/
```


#### Install Neofetch

Use `fastfetch` instead:

```sh
pkg install fastfetch
```

### Other Random Post Install Tasks

<script src="https://gist.github.com/maciakl/53f99c9feca751405ff7.js"></script>
