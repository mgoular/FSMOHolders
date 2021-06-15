@ECHO OFF 
@TITLE Finding the FSMO roles via NTDSUTIL script
@COLOR 1F
SETLOCAL

ECHO  ����������������������������������������������������������������������������ͻ
ECHO  �                                                                            �
ECHO  �                      Script by Michael Goulart                             �
ECHO  �                       Version 1.0 - July 2009                              �
ECHO  �                   *******************************                          �
ECHO  �                                                                            �
ECHO  �     This script will enumerate all the FSMO roles in a domain              �
ECHO  �                  by means of the NTDSUTIL command                          �
ECHO  �                                                                            �
ECHO  �                        All Rights Reserved.                                �
ECHO  �                                                                            �
ECHO  ����������������������������������������������������������������������������ͼ
ECHO.

if ""=="%1" goto USAGE
set DC=%1

:NTDSUTILL

Ntdsutil roles Connections "Connect to server %DC%" Quit "select Operation Target" "List roles for connected server" Quit Quit Quit 

GOTO END


:USAGE

set /p DC=Please provide the name of a domain controller: 
ECHO.

GOTO NTDSUTILL


:END

set DC=

pause
