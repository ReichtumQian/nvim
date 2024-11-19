#Requires AutoHotkey v2.0
^!e::  ; Ctrl+Alt+E

{
  ; 复制原先文本
  A_Clipboard := ""
  Send "^c"  ; Ctrl+C
  ClipWait(1)

  ; 粘贴进临时文件
  TempFile := "vim_ahk.tex" 
  FileAppend(A_Clipboard, TempFile)

  ; 用 Vim 打开文件
  A_Clipboard := ""
  RunWait("nvim.exe " TempFile,)
  A_Clipboard := RTrim(FileRead(TempFile), "`r`n")
  ClipWait()

  Send "^+v"  ; Ctrl+Shift+V
  FileDelete TempFile
}