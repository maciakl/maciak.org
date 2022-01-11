---
layout: wide
title: Python Setup
subtitle: making py scripts work in console
description: how to make py scripts first class citizens in windows
---

### Problem

Let's say you have a script called `script.py`.

When you open a terminal window and run:

    python \path\to\script.py

The output of the script is displayed in the same window.

Now let's say you want to run that same script simply by invoking his name:

    \path\to\script.py

This works, but it opens up in a new terminal console window instead of displaying output in the current one and immediately closes it after the execution finishes. This makes it inconvenient to run this script directly, and means you can't simply drop your Python scripts somewhere in your PATH and used them the same way you would on Mac or Linux.

### Solution

To make Python scripts run in the console without opening a new window, do the following:

First, open `cmd.exe` as Administrator.
 
Next, create an association for `.py` files:  

    assoc .py=Python.File

Now, create a file type handler for `Python.File`:

    ftype Python.File=\absolute\path\to\python.exe "%1" %*

If you installed Python via Microsoft App Store then the command would be would be:

    ftype Python.File=%LOCALAPPDATA%\Microsoft\WindowsApps\python.exe "%1" %*

If you installed Python in the traditional way (via an installer) then you need to use the path to wherever Python was installed. In fact, the installer may have already did all of this for you. The app store version does not.

The last thing you might want to do do is to add `.PY` to the end of your `PATHEX` environment variable. This will allow you to execute your Python scripts without specifying the extension same as with CMD or EXE files.
