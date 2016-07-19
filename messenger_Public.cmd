@echo off
Cls
:: I don't care if you want to copy this and public it as your own. Really. Do what you want with it.
:: BUT if you make an update i want to check it out so if you do sent it to me amcio122@gmail.com
:: I hope you will find this cool to use or scare your friends while they play CS:GO
:: Oh and look for my updates on GitHub.
:: SRVC_LOG:MAINTN_C/O_AFTNROBTCS.
color 08
title MESSENGER
echo ==================================MESSENGER=====================================
echo Program created by: Amcio
echo Information: Type IP/Computer Name to connect to another computer.
echo If you want to send message to someone else type: restart in the message
echo -----------------------------------
:Start
cls
echo ==================================MESSENGER=====================================
echo Program created by: Amcio
echo Information: Type IP/Computer Name to connect to another computer.
echo If you want to send message to someone else type: restart in the message
echo --------------------
set /p n=Computer Name/IP:
cls
:A
echo ==================================MESSENGER=====================================
echo Program created by: Amcio
echo Information: Type IP/Computer Name to connect to another computer.
echo If you want to send message to someone else type: restart in the message
echo --------------------
set /p m=Message:
if %m% EQU restart goto :Start
msg /server:%n% * "%m%"
Pause
cls
Goto A