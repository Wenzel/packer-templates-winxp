@ECHO OFF
REM -- Automates cygwin installation

SETLOCAL

REM -- Change to the directory of the executing batch file
CD %~dp0

REM -- Configure our paths
SET SITE=http://mirrors.kernel.org/sourceware/cygwin/
SET LOCALDIR=%LOCALAPPDATA%/cygwin
SET ROOTDIR=C:/cygwin

REM -- These are the packages we will install (in addition to the default packages)
SET PACKAGES=wget

REM -- Do it!
ECHO *** INSTALLING PACKAGES
setup-x86.exe -q -D -L -d -g -o -s %SITE% -l "%LOCALDIR%" -R "%ROOTDIR%" -C Base -P %PACKAGES%

REM -- Show what we did
ECHO.
ECHO.
ECHO cygwin installation updated
ECHO  - %PACKAGES%
ECHO.

ENDLOCAL

PAUSE
EXIT /B 0
