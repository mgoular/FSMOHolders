@ECHO OFF 
@TITLE Finding the FSMO roles via NTDSUTIL script
@COLOR 1F
SETLOCAL

ECHO  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                                                            บ
ECHO  บ                      Script by Michael Goulart                             บ
ECHO  บ                       Version 1.0 - July 2009                              บ
ECHO  บ                   *******************************                          บ
ECHO  บ                                                                            บ
ECHO  บ     This script will enumerate all the FSMO roles in a domain              บ
ECHO  บ                  by means of the NTDSUTIL command                          บ
ECHO  บ                                                                            บ
ECHO  บ                        All Rights Reserved.                                บ
ECHO  บ                                                                            บ
ECHO  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
