@echo OFF

ECHO "Choose an option .."
ECHO "1 = Logoff"
ECHO "2 = Reboot"
ECHO "3 = Hibernate"
ECHO "4 = Shutdown"
ECHO "5 = Shutdown In 1Hr"
ECHO "6 = Shutdown In 2Hr"
ECHO "7 = Shutdown In 3Hr"
ECHO "8 = Shutdown In 5Hr"
ECHO "9 = To Be Shutdown In hours you want
ECHO "10 = Shutdown In seconds

SET /p option=Choose one option-

IF %option%==1 SHUTDOWN /l
IF %option%==2 SHUTDOWN -r -t 10
IF %option%==3 SHUTDOWN /h
IF %option%==4 SHUTDOWN /s /f /t 0
IF %option%==5 shutdown -s -t 3600
IF %option%==6 shutdown -s -t 7200
IF %option%==7 shutdown -s -t 10800
IF %option%==8 shutdown -s -t 18000
IF %option%==9 GOTO:TIMER
IF %option%==10 GOTO:SEC


:TIMER
SET /p timer=set time-
SET /A TS=3600*%timer%
ECHO.Your PC wil be shutdown in %timer% hours
shutdown -s -t %TS%
GOTO END

:SEC
set /p sec= "Enter the desired shut down timer in seconds: "
timeout %sec%
shutdown -s



:END
PAUSE

