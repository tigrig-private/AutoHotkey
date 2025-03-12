; 日付、時刻の自動入力

; vk1C = 変換キー

vk1C & F1::
F20 & F1::
{
  A_Clipboard := FormatTime(, "yyyy/MM/dd")
  Send("^v")
}

vk1C & F2::
F20 & F2::
{
  A_Clipboard := FormatTime(, "yyyyMMdd")
  Send("^v")
}

vk1C & F3::
F20 & F3::
{
  A_Clipboard := FormatTime(, "HH:mm")
  Send("^v")
}

vk1C & F4::
F20 & F4::
{
  A_Clipboard := FormatTime(, "HHmm")
  Send("^v")
}