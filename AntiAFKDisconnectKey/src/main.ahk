#Requires AutoHotkey v1.1.37.01
  
SwitchNow = 0
    
IniRead, OutputVar, settings.ini, settings, RobloxPopupTimer
IniRead, OutputVar2, settings.ini, settings, MoreDelayTime
                       
SetTimer Stop2,-978000, On   
SetTimer CheckIfRoblox,-10, On 
SetTimer SomeLoop, -10, On

Iniread, HotkeyVariable, settings.ini, settings, AntiAFKDisconnectKey
Hotkey, %HotkeyVariable%,AntiAFKKey,On
return 
    
CheckIfRoblox:
SetTimer CheckIfRoblox,-10, On 
If (SwitchNow = 0)
  {  
  WinGet, active_id, ID, A  
  }
  else
  {
  
  }    
Return

SomeLoop:
SetTimer SomeLoop,-10, On 
If WinActive("ahk_exe RobloxPlayerBeta.exe")
  {  
  SetTimer Stop2,-978000, On   
  }
  else
  {
  
  }    
Return

AntiAFKKey: 
Run refreshtimer.lnk
SetTimer Stop2,-978000, On
SwitchNow = 1
WinActivate, ahk_exe RobloxPlayerBeta.exe
Sleep 10 + OutputVar2
Send {LButton}{LButton}{LButton}{LButton}
Sleep %OutputVar%
WinActivate, ahk_id %active_id%
Sleep 10 + OutputVar2
SwitchNow = 0
return 

Stop2:                  
  If WinActive("Roblox")
  {  

  }
  else
  {
  Run notify-5172024.lnk
  SetTimer Stop2,-978000, On
  }                 
Return