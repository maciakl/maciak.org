---
layout: wide
title: System Information
subtitle: check specs and other info
description: check systems specs and other information
---

### Check CPU Specs

To  check CPU specs:

    lscpu

If you just want the name / description of the CPU:

    lscpu | grep "Model name"

### Check Memory

To find out how much memory you have:

    free -ght

### Check Storage

To find out your current storage usage:

    df -h

### Who is On

To check the system uptime, load and who is currently logged in:

    w

