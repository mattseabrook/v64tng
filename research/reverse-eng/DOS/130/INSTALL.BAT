@echo off
cls
Rem /  Batch File Installer for
Rem /      The 7th Guest
Rem /      version 1.30
Rem /  (c) 1994 Virgin Interactive Entertainment
Rem /  DR10.27

if exist t7g-130.exe goto NOERR
goto ERR3

:NOERR
if %1x==x goto TryDefault
if exist %1\V.EXE goto DO_IT
goto ERR

:TryDefault
if exist c:\id\t7g\v.exe goto CONTINUE
goto usage

:CONTINUE
echo Detected default install directory. 
echo.
set T7GPTH=C:\ID\T7G
if %T7GPTH%==C:\ID\T7G goto DO_IT2
goto ERR2

:DO_IT
set T7GPTH=%1
if %T7GPTH%==%1 goto DO_IT2 
goto ERR2

:DO_IT2
echo One moment please...
echo.
for %%A in (V.EXE INSTALL.EXE) do del %T7GPTH%\%%A
for %%A in (FAT.AD FILES.AL TANDY.DRV) do del %T7GPTH%\%%A
for %%A in (SPHINX.FNT FAT.MT FAT.OPL) do del %T7GPTH%\%%A
for %%A in (ADLIB ADLIBG ALGDIG MT32MPU PASDIG PASFM) do del %T7GPTH%\%%A.ADV
for %%A in (PASOPL SBDIG SBPDIG SBP1FM SBP2FM SBFM) do del %T7GPTH%\%%A.ADV
echo Loading update information...
move t7g-130.exe %T7GPTH% > NUL
move t7g-faq.txt %T7GPTH% > NUL
echo Updating old files... 
echo.
%T7GPTH%\t7g-130 %T7GPTH% 
del %T7GPTH%\t7g-130.exe
pause
if exist %T7GPTH%\t7g130.TXT goto SUCCESS
goto ERROR

:ERR3
echo.
echo           ÄÄÄÄÄÄÄÄ  T7G-130.EXE file not found  ÄÄÄÄÄÄÄÄÄ
echo.
echo           Please ensure that the install is run from the 
echo           floppy disk drive.
echo.
echo           For example, you should be typing:
echo           A:
echo           INSTALL
echo.
echo.
goto ERROR

:ERR2
echo.
echo           ÄÄÄÄÄÄÄ  Not enough environment space   ÄÄÄÄÄÄÄ
echo                  to finish installation of update.
echo.
echo            Please increase the environment space before 
echo            running the install. 
echo.
echo            For example, add: 
echo            SHELL=C:\DOS\COMMAND.COM C:\DOS\ /p /e:256
echo            to you CONFIG.SYS file.
echo.
echo            Do NOT run the install from Windows.
echo.
echo.
goto ERROR

:ERR
echo. 
echo      *** Could not find The 7th Guest files in: 
echo          %1 
echo          please check path.

:USAGE
echo. 
echo      To update your installation of The 7th Guest, type "INSTALL"
echo      followed by a space and the name of the directory where the
echo      T7G files were originally installed.
echo. 
echo      For example, if the update files are located on a disk in
echo      drive A:, and T7G were originally installed to D:\GUEST, the 
echo      commands would look like this:
echo. 
echo      A:
echo      INSTALL D:\GUEST
echo. 
goto end

:ERROR
echo           ÄÄÄ Failed attempt to update The 7th Guest ÄÄÄÄ
echo.
echo                  For assistance, please contact 
echo                Virgin Interactive Entertainment's
echo                        Technical Support
echo                         (714) 833-1999
goto end

:SUCCESS
cls
echo      ÄÄÄÄÄÄÄÄÄ Updated "The 7th Guest" to version 1.30 ÄÄÄÄÄÄÄÄÄ
echo.
echo      Do NOT re-install The 7th Guest from the CD-ROM disc or else
echo      the updated files will be overwritten.  You MAY however run
echo      the INSTALL program from the hard drive to reconfigure your
echo      hardware setup.
echo.
echo      This install also copied a file called T7G-FAQ.TXT to the
echo      directory where The Seventh Guest is installed.  This is a
echo      file that includes all known tips and tricks to get the
echo      game "up and running."  To view this file just change to
echo      the %T7GPTH% directory and type EDIT T7G-FAQ.TXT
echo.
echo      To run the game, just change to the %T7GPTH% directory and
echo      type T7G
echo.
echo.

:END
set T7GPTH=
echo.