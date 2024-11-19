#Requires AutoHotkey v2.0
#SingleInstance ignore
^!e::  ; Ctrl+Alt+E

{
  ; Copy text to clipboard
  A_Clipboard := ""
  Send "^c"  ; Ctrl+C
  ClipWait(1)

  ; Paste text into a temporary file
  TempFile := "vim_ahk.tex" 
  FileAppend(A_Clipboard, TempFile)

  ; Open file in vim
  A_Clipboard := ""
  RunWait("nvim.exe " TempFile,)
  ; If you are using neovide, use the following line instead:
  ; RunWait("neovide.exe " TempFile,)
  
  A_Clipboard := RTrim(FileRead(TempFile), "`r`n")
  ClipWait()

  Send "^+v"  ; Ctrl+Shift+V
  FileDelete TempFile
}