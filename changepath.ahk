;map the function of capture screen and transform the file path and name into relative so as to use in emacs org-mode
y = %1%
x := "D:\Software\daily\emacs-24.3\org"
z :=""
VarSetCapacity(z, 500)
hModule := DllCall("Shlwapi\PathRelativePathToA", "str", z,"str",x,"UInt",16,"str",y,"UInt",128)
StringReplace, z, z, \,/ , All
z=[[%z%]]
clipboard = %z%
WinActivate, ahk_class Emacs