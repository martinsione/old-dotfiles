#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Remap Global Keys
Esc::CapsLock
CapsLock::Escape

; Close apps
Alt & q::
SendInput !{F4} ;Alt-F4 = polite close
Return

; Run Apps
Alt & enter::Run wt
Alt & e::Run explorer.exe
Alt & w::Run brave.exe
Alt & d::Run C:\Users\Martin\AppData\Local\Discord\app-0.0.308\Discord.exe
Alt & s::Run spotify.exe
Alt & .::Run C:\Users\Martin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hotkeys-gaming.ahk

