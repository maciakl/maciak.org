---
layout: wide
title: Installing Windows 10
subtitle: on an old Windows 7 laptop
description: best way to fix up old junker
---

### Creating Installation Media

- [Installation Media Creation Tool]
- [Media Creation Tool Wrapper]


### Installation Tips

- If you have an old Windows 7 key you can use it to activate Windows 10. This still works as of Sep 2022.
- If you want to create a local account on Win 10 Home don't connect to WiFi when prompted

### Setup Checklist

&#10063; Max out UAC  
&#10063; Run Windows Update  
&#10063; Fix [User Experience]  
&#10063; Enable [Storage Sense] (if needed)  
&#10063; Disable unneeded tray icons  
&#10063; Disable OneDrive if needed:  
```batch
reg add "HKLM\Software\Policies\Microsoft\Windows\OneDrive" /v DisableFileSync /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\OneDrive" /v PreventNetworkTrafficPreUserSignIn /t REG_DWORD /d 1 /f
```
&#10063; Unpin unneeded icons from taskbar  
&#10063; Change computer name:  
```batch
powershell -Command "Rename-Computer -NewName NAME -Restart"
```
&#10063; Enable Admin: 
```batch
net user Administrator /active:yes
net user Administrator PASSWORD
```
&#10063; Install useful freeware via [Ninite]  
&#10063; Install [Browser Extensions]  
&#10063; Set up [Shadowcopy]  
&#10063; Drop down to regular user  




[Installation Media Creation Tool]: https://www.microsoft.com/en-us/software-download/windows10
[Media Creation Tool Wrapper]: https://gist.github.com/AveYo/c74dc774a8fb81a332b5d65613187b15
[Find Product Key]: /kb/prodkeyview/
[Shadowcopy]: /kb/shadowcopy
[User Experience]: /kb/uxp
[Storage Sense]: /kb/storagesense
[Ninite]: https://ninite.com/7zip-chrome-firefox-itunes-malwarebytes-skype-teamviewer15-vlc-zoom/
[Browser Extensions]: /kb/ext

