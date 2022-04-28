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
vk1C:: Return ;変換
F13:: Return
F20:: Return

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

; F20（左手用）
~F20 & w:: Send, {Blind}{Up}
~F20 & a:: Send, {Blind}{Left}
~F20 & s:: Send, {Blind}{Down}
~F20 & d:: Send, {Blind}{Right}
~F20 & r:: Send, {Blind}{Home}
~F20 & f:: Send, {Blind}{End}
~F20 & t:: Send, {Blind}{PgUp}
~F20 & g:: Send, {Blind}{PgDn}
~F20 & q:: Send, {Blind}{BackSpace}
~F20 & e:: Send, {Blind}{Delete}
~F20 & z:: Send, {Blind}{Esc}
~F20 & 1:: Send, {Blind}{F1}
~F20 & 2:: Send, {Blind}{F2}
~F20 & 3:: Send, {Blind}{F3}
~F20 & 4:: Send, {Blind}{F4}
~F20 & 5:: Send, {Blind}{F5}
; F20（右手用）
~F20 & i:: Send, {Blind}{Up}
~F20 & j:: Send, {Blind}{Left}
~F20 & k:: Send, {Blind}{Down}
~F20 & l:: Send, {Blind}{Right}
~F20 & y:: Send, {Blind}{Home}
~F20 & h:: Send, {Blind}{End}
~F20 & p:: Send, {Blind}{PgUp}
~F20 & vkBB:: Send, {Blind}{PgDn} ;セミコロン
~F20 & u:: Send, {Blind}{BackSpace}
~F20 & o:: Send, {Blind}{Delete}
~F20 & /:: Send, {Blind}{Esc}
; F20（その他）
F20 & F5:: Reload
~F20 & b:: Send, {CtrlDown}{/}{CtrlUp}

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

; Shift + Space => IME Disabled
+Space:: 
  ime := IME_GET()
  IME_SET(0)
  Send, {Blind}{Space}
  IME_SET(ime)
Return

; Excel ==============================================
#IfWinActive, ahk_exe EXCEL.EXE
  +Enter:: Send, {AltDown}{Enter}{AltUp}
#IfWinActive

; Object Browser ==============================================
#IfWinActive, ahk_exe obo.exe
  ^Enter:: Send, {Alt Down}{O}{E}{Alt Up}
#IfWinActive

; A5M2 ==============================================
#IfWinActive, ahk_exe A5M2.exe
  ~F20 & b:: Send, {Blind}{CtrlDown}{k}{CtrlUp}
#IfWinActive

; Temp ==============================================
~F13 & a::
  Send, {Alt}
  Send, {p}{p}
Return
~F13 & s::
  Send, {Tab}{Tab}
  Send, {AltDown}{Down}{AltUp}
  Send, {End}{Up}
  Send, {Enter}
  Send, {Enter}
Return
~F13 & d::
  Send, {ShiftDown}{Tab}{ShiftUp}
  Send, {Down}{Enter}
  Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
  Send, {AltDown}{Down}{AltUp}
  Send, {End}
  Send, {Enter}
Return
~F13 & f::
  Send, {ShiftDown}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{ShiftUp}
  Send, {End}{Up}
  Send, {Enter}
  Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
  Send, {AltDown}{Down}{AltUp}
  Send, {End}
  Send, {Enter}
Return
~F13 & g::
  Send, {Alt}
  Send, {b}{o}{r}{Enter}
  Send, {CtrlDown}{ShiftDown}{b}{ShiftUp}{CtrlUp}
Return