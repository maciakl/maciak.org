---
layout: wide
title: Airprint
subtitle: with incompatibile printer
description: how to airprint to incompatibile printer using CUPS
---

### Problem

You have a network printer that does not support Airprint. You want to print to it from your phone.

### Requirements

A linux box. This page shows you how to do it on Debian.

### Solution

Install a print server on your linix box:

    sudo apt install cups

Note that CUPS requires Apache to run the web based UI. If you don't already have it installed:

    sudo apt install apache2

If you're running headless, you will need to allow remote administration:

    sudo cupsctl --remote-admin --remote-any --share-printers

Add yourself to the `lpadmin` group:

    sudo usermod -aG lpadmin username

Restart CUPS:

    sudo /etc/init.d/cups restart

This should allow you to log into the web UI on port `631`.

Access the web UI and use the Administration menu to add a printer and then share it. Give it a unique name.

Airprint should work out of the box.
