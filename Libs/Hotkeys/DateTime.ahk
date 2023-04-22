; 日付、時刻の自動入力

; vk1C = 変換キー

vk1C & F1::
F20 & F1::
{
  dateStr := FormatTime(, "yyyy/MM/dd")
  Send("{vkF2}{vkF3}" dateStr)
}

vk1C & F2::
F20 & F2::
{
  dateStr := FormatTime(, "yyyyMMdd")
  Send("{vkF2}{vkF3}" dateStr)
}

vk1C & F3::
F20 & F3::
{
  dateStr := FormatTime(, "HH:mm")
  Send("{vkF2}{vkF3}" dateStr)
}

vk1C & F4::
F20 & F4::
{
  dateStr := FormatTime(, "HHmm")
  Send("{vkF2}{vkF3}" dateStr)
}