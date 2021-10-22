---
layout: wide
title: WinPE
subtitle: creating bootable media
description: guide for creating bootable WinPE media
---


### Purpose

This document outlines the preparation of a bootable WinPE drive that can be used for rescue and recovery on UEFI devices that can't be easily accessed via live linux CD.

### What is WinPE

WinPE is a lightweight windows OS intended for configuration or recovery. It is basically the equivalent of booting into Safe Mode with Command Prompt, or booting Windows Recovery Media and choosing the Command Line option.

### Why would I need this?

Sometimes when you're trying to recover data from un-bootable machne you just want to boot directly into command line, instead of going through WinRe options. Additionally, you can inject extra software (such as your own batch scripts, a file manager and etc) into the media at the build stage, which could make it more powerfule than WinRE drive.

### Preparation

Before you start:

1. Download and install Windows Assessment and Deployment Kit: [ADK]
1. Download and install the [WinPE Add-On] for ADK
1. Download any portable tools you wish to include in the WinPE installation (eg. [Explorer++])
1. Get a [Cheap USB Stick] to install WinPE on

### Procedure

To create WinPE media follow these steps:

#### Prepare WinPE environment

1. Run the Deployment and Imaging Tools Environment as Administrator
1. Create working files directory:
```batch
copype amd64 C:\winpe
```

This will create the `c:\winpe` folder and copy all the necessary files there.

#### Add 3rd Party Tools

This step is optional, and you can skip it, if you don't want to add any 3rd party programs to the WinPE image. In our case we will be adding the [Explorer++] file manager to our environment, since WinPE lacks a GUI file manager.

1. Create a mount directory: 
```batch
    mkdir c:\mount
```

1. Mount `boot.wim` file in the working directory:  
```batch
dism /mount-wim /wimfile:"c:\winpe\media\sources\boot.wim" /index:1 /mountdir:c:\mount
``` 
1. Copy the external tools to the mounted directory (drop them into `system32` folder if you want them included in the path): 
```batch
cp explorer++.exe c:\mount\Windows\system32\explorer.exe
```
1. Repeat this step for any other tools you wish to include
1. Dismount the image and commit changes: 
```batch
dism /unmount-wim /mountdir:c:\winpe /Commit
```

Now the image is ready.

#### Creating Bootable Media

1. Insert a USB drive into the system and note the drive letter (in our case it's `e:`)
1. Run the following command: 
```batch
MakeWinPEMedia /UFD C:\winpe E:
```
1. Press <kbd>Y</kbd> to confirm you wish to wipe the drive
1. Wait for the process to finish

You now have a usb drive that will boot into your customized WinPE environment.


[Cheap USB Stick]: https://amzn.to/3kvsdhb
[ADK]: https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install
[WinPE Add-On]: https://go.microsoft.com/fwlink/?linkid=2022233
[Explorer++]: https://explorerplusplus.com/

