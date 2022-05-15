@echo off
cls


sc stop DiagTrack
sc config DiagTrack start= disabled

'sc stop WSearch
'sc config WSearch start= disabled

'sc stop SysMain
'sc config SysMain start= disabled

'-------------------------------------
'sc stop [SERVICE]
'sc config [SERVICE] start= disabled
pause
exit