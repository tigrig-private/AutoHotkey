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
Insert:: Return

F1:: Return

; CapsLock
vkF0:: Send, {Enter}
Ctrl & vkF0:: Send, {Ctrl Down}{Enter Down}{Enter Up}{Ctrl Up}
Alt & vkf0:: Reload

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, cmd
Return

; 無変換
~vk1D & i:: Send, {Blind}{Up}
~vk1D & j:: Send, {Blind}{Left}
~vk1D & k:: Send, {Blind}{Down}
~vk1D & l:: Send, {Blind}{Right}
~vk1D & w:: Send, {Blind}{Up}
~vk1D & a:: Send, {Blind}{Left}
~vk1D & s:: Send, {Blind}{Down}
~vk1D & d:: Send, {Blind}{Right}
~vk1D & u:: Send, {Blind}{Home}
~vk1D & o:: Send, {Blind}{End}
~vk1D & @:: Send, {Blind}{PgUp}
~vk1D & vkBA:: Send, {Blind}{PgDn} ; コロン
~vk1D & 1:: Send, {Blind}{F1}
~vk1D & 2:: Send, {Blind}{F2}
~vk1D & 3:: Send, {Blind}{F3}
~vk1D & 4:: Send, {Blind}{F4}
~vk1D & 5:: Send, {Blind}{F5}
~vk1D & 6:: Send, {Blind}{F6}
~vk1D & 7:: Send, {Blind}{F7}
~vk1D & 8:: Send, {Blind}{F8}
~vk1D & 9:: Send, {Blind}{F9}
~vk1D & 0:: Send, {Blind}{F10}
~vk1D & -:: Send, {Blind}{F11}
~vk1D & ^:: Send, {Blind}{F12}
~vk1D & z:: Send, {Blind}{Esc}
~vk1D & p:: Send, {Blind}{BackSpace}
~vk1D & `;:: Send, {Blind}{Delete}
~vk1D & q:: Send, {Blind}{BackSpace}
~vk1D & e:: Send, {Blind}{Delete}
~vk1D & .:: Send, {Blind}{=}
~vk1D & /:: Send, {Blind}{^}
~vk1D & n:: Send, {Blind}{XButton1}
~vk1D & m:: Send, {Blind}{XButton2}

; 変換
~vk1C & i:: Send, {Blind}{Up}
~vk1C & j:: Send, {Blind}{Left}
~vk1C & k:: Send, {Blind}{Down}
~vk1C & l:: Send, {Blind}{Right}
~vk1C & w:: Send, {Blind}{Up}
~vk1C & a:: Send, {Blind}{Left}
~vk1C & s:: Send, {Blind}{Down}
~vk1C & d:: Send, {Blind}{Right}
~vk1C & u:: Send, {Blind}{Home}
~vk1C & o:: Send, {Blind}{End}
~vk1C & @:: Send, {Blind}{PgUp}
~vk1C & vkBA:: Send, {Blind}{PgDn} ; コロン
~vk1C & 1:: Send, {Blind}{F1}
~vk1C & 2:: Send, {Blind}{F2}
~vk1C & 3:: Send, {Blind}{F3}
~vk1C & 4:: Send, {Blind}{F4}
~vk1C & 5:: Send, {Blind}{F5}
~vk1C & 6:: Send, {Blind}{F6}
~vk1C & 7:: Send, {Blind}{F7}
~vk1C & 8:: Send, {Blind}{F8}
~vk1C & 9:: Send, {Blind}{F9}
~vk1C & 0:: Send, {Blind}{F10}
~vk1C & -:: Send, {Blind}{F11}
~vk1C & ^:: Send, {Blind}{F12}
~vk1C & z:: Send, {Blind}{Esc}
~vk1C & p:: Send, {Blind}{BackSpace}
~vk1C & `;:: Send, {Blind}{Delete}
~vk1C & .:: Send, {Blind}{=}
~vk1C & /:: Send, {Blind}{^}
~vk1C & n:: Send, {Blind}{XButton1}
~vk1C & m:: Send, {Blind}{XButton2}

; 音量
RCtrl & Up:: Send, {Volume_Up 1}
RCtrl & Down:: Send, {Volume_Down 1}
RCtrl & Left:: Send, {Media_Play_Pause}
RCtrl & Right:: Send, {Volume_Mute}

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
