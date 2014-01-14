; Hold F11 and left click a window to use. Toggle with each click.
F11 & LButton::
IfWinActive, Battlefield: Bad Company 2
{
   Toggle_Window()
ExitApp
}
else
{
   Toggle_Window()
return
}
 
Toggle_Window() {
   MouseGetPos,,, W
   WinGet, S, Style, % "ahk_id " W
   If (S & +0xC00000)
   {
      WinSet, Style, -0xC00000, % "ahk_id " W
      WinMove, % "ahk_id " W,, 0, 0, 1920, 1200
      Return
   }
   WinSet, Style, +0xC00000, % "ahk_id " W
   WinMove, % "ahk_id " W,,,,1920, 1080
}
