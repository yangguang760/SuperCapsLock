; Set the state of CapseLock key to always off
SetCapsLockState ,AlwaysOff
x:=1

;set the swiching function of capslock to shift+capselock
+Capslock::
if(x=1)
{
SetCapsLockState ,AlwaysOn
}
if(x=-1)
{
SetCapsLockState ,AlwaysOff
}
x:=-1*x
return

;map the Up,Down,Left,Right to capslock+ k j h l
Capslock & h::
send {Left}

return
Capslock & j::
send {Down}
return
Capslock & l::
send {Right}
return
Capslock & k::
send {Up}
return
Capslock & x::
send !{F4}
return
Capslock & Esc::
Run D:\Software\daily\emacs-24.3\bin\emacsclientw.exe  --no-wait  --alternate-editor="D:\Software\daily\emacs-24.3\bin\runemacs.exe"   "D:\Software\daily\emacs-24.3\org\todos.org"
return

;map the windows maximum and mimimum function to capslock+m and capslock+n
Capslock & m::
WinMaximize ,A,,,
return
Capslock & n::
Winminimize ,A,,,
return


;map the function of running the file explorer to capslock + e
Capslock & e::
run D:\Software\dailyTools\Totalcmd\totalcmd.exe
return

;map the function of capture screen and transform the file path and name into relative so as to use in emacs org-mode
Capslock & z::
Run, sharex.exe -RectangleRegion,D:\Software\daily\ShareX
return

;map the backspace to capslock + Space, and map the del to capslock + enter
Capslock & Space::
send {Backspace}
return
Capslock & Enter::
send {Del}
return

;map the Ctrl+ c v s a o to capslock + c v s a o
Capslock & c::
send ^c
return
Capslock & v::
send ^v
return
Capslock & s::
send ^s
return
Capslock & a::
send ^a
return
Capslock & o::
send ^o
return


;map the Esc to double press the capslock
~Capslock::
if (A_PriorHotkey<>"~Capslock" or A_TimeSincePriorHotkey>400)
{
	KeyWait, Capslock
	return
}
send {Esc}
return
