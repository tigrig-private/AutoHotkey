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
Insert:: Return
vk1C:: Return ;変換キー
F1:: Return
F20:: Return
RAlt:: Return

;※半角/全角 -> ChgKey で変えている
;※CapsLock -> ChgKey で変えている

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, cmd
Return

; 特殊コントロール
vk1C & i::
  F20 & i:: Up
vk1C & j::
  F20 & j:: Left
vk1C & k::
  F20 & k:: Down
vk1C & l::
  F20 & l:: Right
vk1C & m::
  F20 & m:: Home
vk1C & .::
  F20 & .:: End
vk1C & y::
  F20 & y:: PgUp
vk1C & h::
  F20 & h:: PgDn
vk1C & u::
  F20 & u:: BackSpace
vk1C & o::
  F20 & o:: Delete
vk1C & vkBB:: ;セミコロン
  F20 & vkBB:: Enter
vk1C & z::
  F20 & z:: Esc
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

; 特殊コントロール（マウスのみ）
F20 & LButton:: PgUp
F20 & RButton:: PgDn

; F20（その他）
vk1C & b::
F20 & b::
  Send, ^{/}
Return
vk1C & Esc::
  F20 & Esc:: Reload

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
vk1C & q:: ;変換 + q
  FormatTime, dateStr, , yyyy/MM/dd
  Send, {vkF2}{vkF3}%dateStr%
Return

vk1C & w:: ;変換 + w
  FormatTime, dateStr, , yyyyMMdd
  Send, {vkF2}{vkF3}%dateStr%
Return

vk1C & e:: ;変換 + e
  FormatTime, dateStr, , HH:mm
  Send, {vkF2}{vkF3}%dateStr%
Return

vk1C & r:: ;変換 + e
  FormatTime, dateStr, , HHmm
  Send, {vkF2}{vkF3}%dateStr%
Return

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