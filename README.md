# LaunchFromBash

## Introduction

This is a simple setup to run X11 apps in Windows using VcXsrv and bash.exe on Windows 10

## Instructions

* You will need to have [VcXsrv](https://sourceforge.net/projects/vcxsrv) and set the path of that in the script.
* Then you need to create a shortcut where the target looks like below:

  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -c C:\BashApps\LaunchFromBash.ps1 -Command terminator  
  Note the "-executionpolicy bypass" to alleviate any chance that the ps1 script won't run due to local policy.
* Find an icon to make your shortcut look pretty.
