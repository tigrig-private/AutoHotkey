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
F13:: Reload
Insert:: Return
vk1C:: Return ;変換

; CapsLock
vkF0:: Send, {Enter}
Ctrl & vkF0:: Send, {Ctrl Down}{Enter Down}{Enter Up}{Ctrl Up}

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, cmd
Return

; vk1C: 変換キー
; 右手用
vk1C & i:: Send, {Blind}{Up}
vk1C & j:: Send, {Blind}{Left}
vk1C & k:: Send, {Blind}{Down}
vk1C & l:: Send, {Blind}{Right}
vk1C & p:: Send, {Blind}{Home}
vk1C & vkBB:: Send, {Blind}{End} ;セミコロン
vk1C & @:: Send, {Blind}{PgUp}
vk1C & vkBA:: Send, {Blind}{PgDn} ;コロン
vk1C & u:: Send, {Blind}{BackSpace}
vk1C & o:: Send, {Blind}{Delete}
vk1C & /:: Send, {Blind}{Esc}
; 左手用
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

; 右手マウス時の左手用操作
; （GHub でマウス親指ボタンに F13 を当てている）
F13 & w:: Send, {Blind}{Up}
F13 & a:: Send, {Blind}{Left}
F13 & s:: Send, {Blind}{Down}
F13 & d:: Send, {Blind}{Right}
F13 & r:: Send, {Blind}{Home}
F13 & f:: Send, {Blind}{End}
F13 & t:: Send, {Blind}{PgUp}
F13 & g:: Send, {Blind}{PgDn}
F13 & q:: Send, {Blind}{BackSpace}
F13 & e:: Send, {Blind}{Delete}
F13 & z:: Send, {Blind}{Esc}
F13 & b:: Send, {CtrlDown}{/}{CtrlUp}
F13 & 1:: Send, {Blind}{6}
F13 & 2:: Send, {Blind}{7}
F13 & 3:: Send, {Blind}{8}
F13 & 4:: Send, {Blind}{9}
F13 & 5:: Send, {Blind}{0}
F13 & vk1D:: IME_SET(1)

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
