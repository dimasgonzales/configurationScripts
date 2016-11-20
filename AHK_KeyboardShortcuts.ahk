#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; START KEYBOARD SHORTCUTS

; Keyboard shortcut for rainmeter command
;#if WinExist("ahk_class RainmeterMeterWindow")
;	Esc::
;		Run "C:\Program Files\Rainmeter\Rainmeter.exe" !DeactivateConfig "illustro\Command" "Command.ini"
;	Return
;#if

^!s:: ; captures ctrl-alt-s to launch and toggle sublime in full screen
	Run "C:\Program Files\Sublime Text 3\sublime_text.exe" --command toggle_full_screen
Return

^!c:: ; captures ctrl-alt-c to launch primary chrome profile
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory=Default
Return

^!+c:: ; captures ctrl-alt-shift-c to launch school profile
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 1"
Return


#F20::
    IfWinExist ahk_class screenClass 
    {
        Send {Space} 
        return
    }
    IfWinNotExist ahk_exe OneNote.exe 
    {
        Run C:\Program Files\Microsoft Office\root\Office16\OneNote.exe
        return
    }
    IfWinActive ahk_exe OneNote.exe 
    {
        Send, ^n
        return
    }
    IfWinExist ahk_exe OneNote.exe 
    {
        WinActivate
        return
    }

#F19:: 
    IfWinExist ahk_class screenClass 
    {
        Send {Left} 
        return
    }
    else 
    {
        run, SnippingTool.exe
        Sleep, 500
        send, ^{PrintScreen}
        KeyWait, LButton, D
        KeyWait, LButton, U
        Sleep, 500
        WinClose, ahk_exe SnippingTool.exe
        return
    }

#F18:: 
    IfWinExist ahk_class screenClass 
    {
        Send {B}
        return
    }
    IfWinActive ahk_exe Powerpnt.exe 
    {
        Send {F5}
        return
    }
    else 
    {
        send {LWin Down}{PrintScreen}{LWin Up} 
        sleep 500 
        return
    }