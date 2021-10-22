---
layout: wide
title: Windows Repair
subtitle: a quick guide
description: checklist and repair tools
---

### Windows Repair Checklist

&#10063; Run Hardware Diagnostics (<kbd>F12</kbd> on Dell computers)  
&#10063; Check disk for errors:

    chkdsk /r

&#10063; Press <kbd>Y</kbd>  
&#10063; Reboot  
  
&#10063; Check Windows Reliability Monitor  
&#10063; Check Event Viewer and blow away the logs  
&#10063; Run Nirsoft [BlueScreenView]  
&#10063; Uninstall junk programs  
&#10063; Uninstall Java  
&#10063; Uninstall Flash  
&#10063; Remove current AV, if needed run [ESET AV Remover]  
&#10063; Run `cleanmgr` as admin  
&#10063; Do a Windows Update cache reset:

    net stop wuauserv
    net stop cryptsvc
    net stop bits
    rd /S /Q C:\Windows\SoftwareDistribution

&#10063; Run [BleachBit]  
&#10063; Reboot  
  
&#10063; Run [MS Safety Scanner]  
&#10063; Run [KVRT]  
&#10063; Run [ADWCleaner]  
&#10063; Run [Chrome Cleanup Tool]  
&#10063; Install and run a scan with [Malwarebytes]  
&#10063; If needed, run [ESET Service Repair Tool]  
&#10063; Run Dism Restore Health:

    dism /Online /Cleanup-Image /RestoreHealth

&#10063; Run SFC Scan:

    sfc /scannow

&#10063; Reboot  
&#10063; Run windows update (if needed see troubleshooting below)  
&#10063; Run Webroot [System Analyzer]  
&#10063; Clean up the SxS folder:

    dism /Online /Cleanup-Image /StartComponentCleanup /ResetBase

&#10063; Max out UAC  
&#10063; Make sure SmartScreen is enabled    
&#10063; For reckless users, enable Isolated Browsing  
&#10063; If needed do Windows Search purge (see below)  
&#10063; If needed, update Chrome  
&#10063; If needed, update Firefox  
&#10063; Install recommended [Browser Extensions] in all browsers  
&#10063; If on Dell install [Dell Support Assist] and update drivers  
&#10063; Run Sysinternals [Autoruns] and disable unneded junk  
&#10063; Run Microsoft [SaRa] to troubleshoot Office issues  







### Windows Update Troubleshooting

If windows is not updating:

&#10063; Reset  `catroot2` folder:

    net stop cryptsvc
    md %systemroot%\system32\catroot2.old
    xcopy %systemroot%\system32\catroot2 %systemroot%\system32\catroot2.old /s
    del %systemroot%\system32\catroot2/*.*
    net start cryptsvc

&#10063; Reboot & check for updates  

&#10063; Download [Reset Windows Update Tool]  
&#10063; Use options 2, 5, 8, 9, 10, 12  
&#10063; Reboot & check for updates 



### Windows Search Purge

If search is wonky or you want to reclaim space:

    net stop wsearch
    rd /s /q %programdata%\Microsoft\Search

Next delete following registry keys:

    HKEY_CURRENT_USER\Software\Microsoft\Windows Search
    HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Search\SetupCompletedSucessfully

### Reset Windows Stack

If you are having networking issues, try the following:

    ipconfig /flushdns
    nbtstat -R
    nbtstat -RR
    netsh int reset all
    netsh int ip reset
    netsh winsock reset


[BlueScreenView]: https://www.nirsoft.net/utils/blue_screen_view.html
[ESET AV REMOVER]: https://help.eset.com/ees/6/en-US/?av_remover.htm
[BleachBit]: https://www.bleachbit.org/
[MS Safety Scanner]: https://www.microsoft.com/security/scanner/en-us/default.aspx
[KVRT]: https://www.kaspersky.com/downloads/thank-you/free-virus-removal-tool?form=1
[ADWcleaner]: https://www.malwarebytes.com/adwcleaner/
[Chrome Cleanup Tool]: https://www.google.com/chrome/cleanup-tool/
[Malwarebytes]: https://www.malwarebytes.com/
[ESET Service Repair Tool]: https://www.wintips.org/how-to-restore-windows-services-to-their-default-state/
[Reset Windows Update Tool]: https://github.com/ManuelGil/Script-Reset-Windows-Update-Tool
[System Analyzer]: http://anywhere.webrootcloudav.com/zerol/syswranalyzer.exe
[Browser Extensions]: /kb/ext/
[Dell Support Assist]: https://www.dell.com/support/contents/en-us/article/product-support/self-support-knowledgebase/software-and-downloads/supportassist
[Autoruns]: https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns
[SaRA]: https://www.howto-outlook.com/downloads/sara.htm