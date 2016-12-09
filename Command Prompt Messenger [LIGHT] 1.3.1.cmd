@echo off
Cls
:: I don't care if you want to copy this and public it as your own. Really. Do what you want with it.
:: BUT if you make an update i want to check it out so if you do sent it to me amcio122@gmail.com
:: I hope you will find this cool to use or scare your friends while they play CS:GO
:: Oh and look for my updates on GitHub.
:: This Version Is WITHOUT Loading Screeens.
color 08
title Command Prompt Messenger By Amcio [LIGHT]
:Test
:: Program Can Hang Here...
echo ==================================MESSENGER====================================
echo # Program created by: Amcio												   #
echo # Information: Type IP/Computer Name to connect to another computer.		   #
echo # If you want to send message to someone else type: restart in the message	   #
echo -----------------------------------
cls
:Start
cls
echo ==================================MESSENGER====================================
echo # Program created by: Amcio				                      #
echo # Information: Type IP/Computer Name to connect to another computer.	      #
echo # If you want to send message to someone else type: restart in the message    #
echo # --------------------							      #
set /p n=Computer Name/IP:
cls
:Messege
echo ==================================MESSENGER====================================
echo # Program created by: Amcio                                                   #
echo # Information: Type IP/Computer Name to connect to another computer.          #
:: The Rogue 									  
echo # If you want to send message to someone else type: restart in the message    #
echo # Your Messege will be displayed for 20 seconds.                              #
echo # --------------------                                                        #
set /p m=Message:
if /I "%m%" EQU "restart" (
	Goto :Start
)
msg /server:%n% * /V /W /TIME:20 "%m%"
Pause
cls
Goto Messege