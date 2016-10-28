Set objShell = CreateObject("WScript.Shell")
Set objWord = CreateObject( "Word.Application" )

do
if objWord.NumLock = 0 then
   ' turn capslock off
   objShell.SendKeys "{numlock}"
end if
wscript.sleep 100
loop

objWord.Quit