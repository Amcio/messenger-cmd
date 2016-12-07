@echo off
Cls
:: I don't care if you want to copy this and public it as your own. Really. Do what you want with it.
:: BUT if you make an update i want to check it out so if you do sent it to me amcio122@gmail.com
:: I hope you will find this cool to use or scare your friends while they play CS:GO
:: Oh and look for my updates on GitHub.
:: This Version Is WITHOUT Loading Screeens.
color 08
title Command Prompt Messenger By Amcio 2.0 BETA [LIGHT]
:Interface
:: Choose Interface
echo ==================================MESSENGER====================================
echo # Program created by: Amcio	                                              #
echo # Choose The Interface! You Choose Legacy if you use Windows BEFORE Vista and #
echo # Future with Windows Vista and newer. Sometimes the legacy interface is not  #
echo # necessary. If one interface does not work try the other.                    #
echo # Choose: Legacy Or Future                                                    #
echo ===================================AMCIO=======================================
set /p i=Interface:
cls
:Start
cls
echo ==================================MESSENGER====================================
echo # Program created by: Amcio				                      #
echo # Information: Type IP/Computer Name to connect to another computer.	      #
echo # To use another Interface restart the Program (Ctrl + C)                     #
echo # If you use Legacy Interface (Unfinished)    #
echo ===================================AMCIO=======================================
set /p n=Computer Name/IP:
if /I "%i%" EQU "Legacy" (
	Goto :MessegeLegacy
)
cls
:MessegeFuture
cls
echo ==================================MESSENGER====================================
echo # Program created by: Amcio                                                   #
echo # Information: Future Interface Active                                        #
:: The Rogue 									  
echo # If you want to send message to someone else type: restart in the message    #
echo # Your Messege will be displayed for 20 seconds.                              #
echo ===================================FUTURE======================================                                                    #
set /p m=Message:
Goto :SendFuture
:MessegeLegacy
cls
echo ==================================MESSENGER====================================
echo # Program created by: Amcio                                                   #
echo # Information: Legacy Interface Active                                        #				  
echo # If you want to send message to someone else type: restart in the message    #
echo # Your Messege will be displayed for 20 seconds.                              #
echo ===================================LEGACY======================================
set /p m=Message:
if /I "%i%" EQU "Legacy" (
	Goto :SendLegacy
)
:SendFuture
if /I "%m%" EQU "restart" (
	Goto :Start
)
msg /server:%n% * /V /W /TIME:20 "%m%"
Pause
Goto :MessegeFuture
cls
:SendLegacy
if /I "%m%" EQU "restart" (
	Goto :Start
)
net send "%n%" %m%
Pause
Goto :MessegeLegacy
cls