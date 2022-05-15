@echo off
cls


::jika ada titik duanya berarti langsung ke :setIP
::goto delIP

::ini untuk set variable (ubah sesuai nama wifi laptopnya)
::--------------------------------------------------------
::goto lan

:wifi
set namaWifi="Wi-Fi"
set ip[0]="0"
set ip[1]="111"
::set ip[2]="1"
::
set ip[2]="254"
goto setIP

:lan
set namaWifi="Ethernet"
set ip[0]="1"
set ip[1]="111"
set ip[2]="1"
goto setIP


:setIP
netsh int ip set address name=%namaWifi% static 192.168.%ip[0]%.%ip[1]% 255.255.255.0 192.168.%ip[0]%.%ip[2]%
netsh int ip add dns name=%namaWifi% addr=8.8.8.8
netsh int ip add dns name=%namaWifi% addr=8.8.4.4 index=2
pause
goto keluar

:delIP
netsh interface ip set address name=%namaWifi% source=dhcp
netsh interface ip set dns name=%namaWifi% source=dhcp
pause
goto keluar


:keluar
exit


::-------------------------------------------------------------------
::netsh int ip set address "Local Area Connection" static 192.168.0.100 255.255.255.0 192.168.0.254 netsh int ip set dns "Local Area Connection" sta 8.8.8.8 netsh int ip add dns "Local Area Connection" 8.8.4.4 index=2
::pause