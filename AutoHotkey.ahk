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

; [Ctrlキー]	^
; [Shiftキー]	+
; [Altキー]	!
; [Winキー]	#

NumLock:: Return
ScrollLock:: Return
Insert:: Return
vk1C:: Return ;変換
F1:: Return
F13:: Return
F20:: Return

; CapsLock
vkF0:: Esc

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, cmd
Return

; vk1D: 無変換キー
+vk1D:: Return

; F20（左手コントロール用）
vk1C & w:: 
  F20 & w:: Up
vk1C & a::
  F20 & a:: Left
vk1C & s::
  F20 & s:: Down
vk1C & d::
  F20 & d:: Right
vk1C & r::
  F20 & r:: Home
vk1C & f::
  F20 & f:: End
vk1C & t::
  F20 & t:: PgUp
vk1C & g::
  F20 & g:: PgDn
vk1C & q::
  F20 & q:: BackSpace
vk1C & e::
  F20 & e:: Delete
vk1C & 1::
  F20 & 1:: F1
vk1C & 2::
  F20 & 2:: F2
vk1C & 3::
  F20 & 3:: F3
vk1C & 4::
  F20 & 4:: F4
vk1C & 5::
  F20 & 5:: F5
Return

; F20（右手コントロール用）
vk1C & i::
  F20 & i:: Up
vk1C & j::
  F20 & j:: Left
vk1C & k::
  F20 & k:: Down
vk1C & l::
  F20 & l:: Right
vk1C & y::
  F20 & y:: Home
vk1C & h::
  F20 & h:: End
vk1C & p::
  F20 & p:: PgUp
vk1C & vkBB::
  F20 & vkBB:: PgDn ;セミコロン
vk1C & u::
  F20 & u:: BackSpace
vk1C & o::
  F20 & o:: Delete
Return

; F20（その他）
vk1C & F5::
  F20 & F5:: Reload
Return
vk1C & b::
F20 & b::
  Send, ^{/}
Return
vk1C & Esc::
F20 & Esc::
  !F4
Return

; 音量
F20 & Up::
  Send, {Volume_Up 1}
Return
F20 & Down::
  Send, {Volume_Down 1}
Return
F20 & Left::
  Send, {Media_Play_Pause}
Return
F20 & Right::
  Send, {Volume_Mute}
Return

; Numパッド
^NumpadDot:: Send, {:}

; 最小化
F1 & Space::
F20 & Space::
  WinMinimize, A
Return

; バックスラッシュ
^+/:: Send, {\}

; 日付、時刻 ==============================================
; ※ SplashTop では無効化（反映が遅いため）
#IfWinNotActive, ahk_exe strwinclt.exe
^!vkBB:: ;Ctrl + Alt + セミコロン
  FormatTime, dateStr, , yyyy/MM/dd
  Send, {vkF2}{vkF3}%dateStr%
Return

^+!vkBB:: ;Ctrl + Shift + Alt + コロン
  FormatTime, dateStr, , yyyyMMdd
  Send, {vkF2}{vkF3}%dateStr%
Return

^!vkBA:: ;Ctrl + Alt + コロン
  FormatTime, dateStr, , HH:mm:ss
  Send, {vkF2}{vkF3}%dateStr%
Return

^!]:: ;Ctrl + Alt + ]
  FormatTime, dateStr, , yyyy/MM/dd HH:mm:ss
  Send, {vkF2}{vkF3}%dateStr%
Return
#IfWinNotActive

; Excel ==============================================
#IfWinActive, ahk_exe EXCEL.EXE

  ;Ctrl + Alt + セミコロン => Ctrl + セミコロン（日付入力）
^!vkBB::
  Send, ^`;
Return
#IfWinActive

; Notion ==============================================
#IfWinActive, ahk_exe Notion.exe
  ; 戻る
  XButton1:: Send, ^{vkDB}
  ; 進む
  XButton2:: Send, ^{vkDD}
#IfWinActive

; Object Browser ==============================================
#IfWinActive, ahk_exe obo.exe
  ^Enter:: Send, {Alt Down}{O}{E}{Alt Up}
#IfWinActive

; A5M2 ==============================================
#IfWinActive, ahk_exe A5M2.exe
  ~F20 & b:: Send, ^{k}
#IfWinActive

; LineWorks ==============================================
#IfWinActive, ahk_exe WMOne.exe
  ^Enter:: Send, {Enter}
#IfWinActive