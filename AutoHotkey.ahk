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

; 半角/全角
sc029:: Send, {BackSpace}

F1:: Send, {Delete}

; CapsLock
vkF0:: Send, {Enter}
Alt & vkf0:: Reload

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, RunAsAdmin(%cmd%)
Return

; 無変換
~vk1D & i:: Send, {Blind}{Up}
~vk1D & j:: Send, {Blind}{Left}
~vk1D & k:: Send, {Blind}{Down}
~vk1D & l:: Send, {Blind}{Right}
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
~vk1D & .:: Send, {Blind}{=}
~vk1D & /:: Send, {Blind}{^}

; 変換
~vk1C & i:: Send, {Blind}{Up}
~vk1C & j:: Send, {Blind}{Left}
~vk1C & k:: Send, {Blind}{Down}
~vk1C & l:: Send, {Blind}{Right}
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

; 音量
RCtrl & Up:: Send, {Volume_Up 1}
RCtrl & Down:: Send, {Volume_Down 1}
RCtrl & Left:: Send, {Volume_Mute}
RCtrl & Right:: Send, {Volume_Mute}