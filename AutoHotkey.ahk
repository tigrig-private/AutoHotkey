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

#Include lib/IME.ahk

Return

NumLock:: Return
ScrollLock:: Return
vk1C & F5:: Reload
Insert:: Return
vk1C:: Return ;変換
F13:: Return

; CapsLock
vkF0:: Send, {Enter}
Ctrl & vkF0:: Send, {Ctrl Down}{Enter Down}{Enter Up}{Ctrl Up}

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, cmd
Return

; vk1D: 無変換キー
+vk1D:: Return

; vk1C: 変換キー
vk1C & w:: Send, {Blind}{Up}
vk1C & a:: Send, {Blind}{Left}
vk1C & s:: Send, {Blind}{Down}
vk1C & d:: Send, {Blind}{Right}
vk1C & r:: Send, {Blind}{Home}
vk1C & f:: Send, {Blind}{End}
vk1C & t:: Send, {Blind}{PgUp}
vk1C & g:: Send, {Blind}{PgDn}
vk1C & q:: Send, {Blind}{BackSpace}
vk1C & e:: Send, {Blind}{Delete}
vk1C & z:: Send, {Blind}{Esc}
vk1C & 1:: Send, {Blind}{6}
vk1C & 2:: Send, {Blind}{7}
vk1C & 3:: Send, {Blind}{8}
vk1C & 4:: Send, {Blind}{9}
vk1C & 5:: Send, {Blind}{0}

; 音量
~Numpad0 & Up:: Send, {Volume_Up 1}
~Numpad0 & Down:: Send, {Volume_Down 1}
~Numpad0 & Left:: Send, {Media_Play_Pause}
~Numpad0 & Right:: Send, {Volume_Mute}

; Numパッド
^NumpadDot:: Send, {:}

; 日付、時刻
^vkBB:: ;Ctrl + セミコロン
  FormatTime, dateStr, , yyyy/MM/dd
  Send, {vkF2}{vkF3}%dateStr%
Return

^vkBA:: ;Ctrl + コロン
  FormatTime, dateStr, , HH:mm:ss
  Send, {vkF2}{vkF3}%dateStr%
Return

; Object Browser ==============================================
#IfWinActive, ahk_exe obo.exe
  ^Enter:: Send, {Alt Down}{O}{E}{Alt Up}
#IfWinActive

; A5M2 ==============================================
#IfWinActive, ahk_exe A5M2.exe
  ~F13 & b:: Send, {Blind}{CtrlDown}{k}{CtrlUp}
#IfWinActive