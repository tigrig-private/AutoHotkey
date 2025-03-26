#HotIf GetKeyState("F15", "P")
F1::
{
  A_Clipboard := "![imo-badge](https://img.shields.io/badge/review-imo-orange.svg)"
  Send("^v")
}
F2::
{
  A_Clipboard := "![nits-badge](https://img.shields.io/badge/review-nits-green.svg)"
  Send("^v")
}
F3::
{
  A_Clipboard := "![must-badge](https://img.shields.io/badge/review-must-red.svg)"
  Send("^v")
}
F4::
{
  A_Clipboard := "![ask](https://img.shields.io/badge/review-Q-blue.svg)"
  Send("^v")
}
F5::
{
  A_Clipboard := "![good-badge](https://img.shields.io/badge/review-good-blightgreen.svg)"
  Send("^v")
}
#HotIf