---
layout: wide
title: Installing Windows 10
subtitle: on an old Windows 7 laptop
description: best way to fix up old junker
---

### Problem

You have an old Windows 7 computer and you would like to cleanly install Windows 10 on it.

### Preparation

#### Windows License

You do not need to buy a Windows 10 license, or installation media. This is Microsoft's little open secret, but any valid Windows 7 key will work as Windows 10 key, and activate as genuine windows without any issue. All you need is the your old Windows 7 activation key. This will work for Pro and Home editions.

Most Windows 7 laptops have it printed on a sticker located on the bottom or back of the computer. Some laptops have it hidden behind a latch on the bottom. Laptops with removable batteries often have this sticker attached inside the battery compartment and you will have to remove the battery to see it. Laptops without removeable battery might have it attached on the inside of the bottom case (in this case you will have to unscrew and remove it).

#### Memory

Chances are that your old computer is low on memory.

1. Go to [Crucial] and put in your make and model
1. The site should tell you how many memory slots you have available, and give you options
1. Max out
1. Install the new memory and make sure it works

#### Disk

Chances are your old computer has a HDD. You want to upgrade it to SSD. Once again [Crucial] can give you suggestions.

In most cases you'll probably be buying a 2.5 inch SATA drive that fits in both laptops and desktops. For desktops you might need a [Mounting Braket], but good news, these are cheep.

#### Find your Office Product Key

If you have a working copy of MS Office on your Win 7 laptop, you might want to find the product key. If you can't find it, log into your Mivrosoft account. If you own more than one copy, you can find the last 4 digits of the installed license key via this method: [Find Product Key]

#### Backup

Back all your stuff up. It's best to do a clean install, and we will likely be upgrading to an SSD anyway.

### Creating Installation Media

1. Get a [Cheap USB Stick]
1. Download the [Installation Media Creation Tool] from Microsoft
1. Use the Media Creation Tool to create a Windows 10 installer on your USB stick

Make sure you choose the correct version (home or pro) that matches your Windows 7 license.

By default Microsoft only makes the latest version of Windows 10 available via the Media Creation Tool. If you need to make installation media for a specific windows version (eg. 1909) for compatibility reasons, you can use the [Media Creation Tool Wrapper] script. It will allow you to choose which version you want to use.

### Installation

1. Install your new SSD
1. Plug in your thumb drive
1. You may need to switch boot order in BIOS or enter boot selection mode (on Dell just hit <kbd>F12</kbd> at the Dell logo)
1. Follow the prompts
1. When asked for license key, enter your Windows 7 key
1. Continute installing
1. If you want to create a local account with Windows 10 Home don't connect to wifi when prompted
1. Try creating a Microsoft account, and when it fails it will give you option to create local only account
1. Continue installation


### Setup Checklist

&#10063; Max out UAC  
&#10063; Run Windows Update  
&#10063; Disable tips on lock screen  
&#10063; Disable suggestions in Start Menu  
&#10063; Disable combine in taskbar  
&#10063; Enable Storage Sense (System &rarr; Storage)  
&#10063; Disable unneeded tray icons  
&#10063; Disable OneDrive if needed  
&#10063; Unpin unneeded icons from taskbar  
&#10063; Change Computer and Workgroup name  
&#10063; Enable Admin: 
```batch
net user Administrator /active:yes
```
&#10063; Change Admin pwd: 
```batch
net user Administrator pwd  
```
&#10063; Install MS Office & activate it with your product key  
&#10063; Alternatively install Libre Office instead  
&#10063; Install Chrome & Firefox  
&#10063; Install Zoom & Skype  
&#10063; Install iTunes & VLC  
&#10063; Install TeamViewer  
&#10063; Install Silverlight & Air  
&#10063; Install Malwarebytes  
&#10063; Organize Start Menu  
&#10063; Set Browser home pages  
&#10063; Install uBlock Origin  
&#10063; Install Https Everywhere  
&#10063; Install Malwarebytes Browser Guard  
&#10063; Install Adobe Reader & set it as default  
&#10063; Change Adobe Security Settings  
&#10063; Set up [Shadowcopy]  
&#10063; Drop down to regular user  




[Cheap USB Stick]: https://amzn.to/3kvsdhb
[CPU-Z]: https://www.cpuid.com/softwares/cpu-z.html
[Crucial]: https://crucial.com
[Mounting Bracket]: https://amzn.to/2NVHXxT
[Installation Media Creation Tool]: https://www.microsoft.com/en-us/software-download/windows10
[Media Creation Tool Wrapper]: https://gist.github.com/AveYo/c74dc774a8fb81a332b5d65613187b15
[Find Product Key]: /kb/prodkeyview/
[Shadowcopy]: /kb/shadowcopy