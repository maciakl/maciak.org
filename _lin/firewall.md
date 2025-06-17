---
layout: wide
title: Install Firewall
subtitle: and configure it
description: install and configure a basic software firewall
---

### Firewall

To install the firewall on debian/ubuntu or other apt based system:

    sudo apt install ufw

Next, configure it to allow inbound SSH:

    sudo ufw allow OpenSSH
    sudo ufw allow mdns

Finally enable the firewall:

    sudo ufw enable

If you are planning to run a web server:

    sudo ufw allow http
    sudo ufw allow https
