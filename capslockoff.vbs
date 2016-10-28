Set objShell = CreateObject("WScript.Shell")
Set objWord = CreateObject( "Word.Application" )

do
if objWord.CapsLock <> 0 then
   ' turn capslock off
   objShell.SendKeys "{capslock}"
end if
wscript.sleep 100
loop

objWord.Quit