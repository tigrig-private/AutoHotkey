#HotIf GetKeyState("F15", "P")
F1::
{
  ClipSaved := ClipboardAll()
  A_Clipboard := "![imo-badge](https://img.shields.io/badge/review-imo-orange.svg)"
  Send("^v")
  Sleep(50)
  A_Clipboard := ClipSaved
}
F2::
{
  ClipSaved := ClipboardAll()
  A_Clipboard := "![nits-badge](https://img.shields.io/badge/review-nits-green.svg)"
  Send("^v")
  Sleep(50)
  A_Clipboard := ClipSaved
}
F3::
{
  ClipSaved := ClipboardAll()
  A_Clipboard := "![must-badge](https://img.shields.io/badge/review-must-red.svg)"
  Send("^v")
  Sleep(50)
  A_Clipboard := ClipSaved
}
F4::
{
  ClipSaved := ClipboardAll()
  A_Clipboard := "![ask](https://img.shields.io/badge/review-Q-blue.svg)"
  Send("^v")
  Sleep(50)
  A_Clipboard := ClipSaved
}
F5::
{
  ClipSaved := ClipboardAll()
  A_Clipboard := "![good-badge](https://img.shields.io/badge/review-good-blightgreen.svg)"
  Send("^v")
  Sleep(50)
  A_Clipboard := ClipSaved
}
r::
{
  A_Clipboard := "gh pr create --base flow-module/phase1/main --assignee '@me' --reviewer 'ryota-kashima_t7s,ryosuke-shinozaki_t7s,yuka-irisawa_t7s' --title 'flow-module | xxx' --body '## 案件(PBI) / 開発の経緯`r`n`r`n`r`n`r`n## 実装内容`r`n`r`n`r`n`r`n## 補足`r`n`r`n`r`n'"
  Send("^v")
}
#HotIf