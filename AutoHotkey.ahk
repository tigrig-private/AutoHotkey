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

vk5D:: Enter ;AppsKey
F13:: AppsKey ;CapsLock -> レジストリ変更で F13 に

#+E::
  Run, C:\Users\%A_UserName%\Downloads
Return

#c::
  Run, cmd
Return

; F20（左手コントロール用）
vk1C & w:: 
  F20 & w:: Up
vk1C & a::
  F20 & a:: Left
vk1C & s::
  F20 & s:: Down
vk1C & d::
  F20 & d:: Right
vk1C & c::
  F20 & c:: Home
vk1C & z::
  F20 & z:: End
vk1C & r::
  F20 & r:: PgUp
vk1C & f::
  F20 & f:: PgDn
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
Return

; F20（その他）
vk1C & b::
F20 & b::
  Send, ^{/}
Return
vk1C & F5::
  F20 & F5:: Reload
vk1C & Esc::
  F20 & Esc:: !F4

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
vk1C & vkBB:: ;変換 + セミコロン
  FormatTime, dateStr, , yyyy/MM/dd
  Send, {vkF2}{vkF3}%dateStr%
Return

vk1C & p:: ;変換 + P
  FormatTime, dateStr, , yyyyMMdd
  Send, {vkF2}{vkF3}%dateStr%
Return

vk1C & vkBA:: ;変換 + コロン
  FormatTime, dateStr, , HH:mm:ss
  Send, {vkF2}{vkF3}%dateStr%
Return

vk1C & @:: ;変換 + @
  FormatTime, dateStr, , yyyy/MM/dd HH:mm:ss
  Send, {vkF2}{vkF3}%dateStr%
Return
#IfWinNotActive

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