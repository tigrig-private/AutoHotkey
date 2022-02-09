#Persistent
#SingleInstance, Force
#NoEnv
#UseHook
#InstallKeybdHook
#InstallMouseHook
#HotkeyInterval, 2000
#MaxHotkeysPerInterval, 200
Process, Priority,, Realtime
SendMode, Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

Return

NumLock:: Return
ScrollLock:: Return
Insert:: Return

; 半角/全角
sc029::
  Send, {BackSpace}
Return

F1::
  Send, {Delete}
Return

; CapsLock
sc03A::
  Send, {Enter}
Return

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, RunAsAdmin(%cmd%)
Return

; 無変換
vk1D & i:: Send, {Blind}{Left} 
vk1D & k:: Send, {Blind}{Down}
vk1D & l:: Send, {Blind}{Right}
Shift & vk1D:: Send, {vk1D}