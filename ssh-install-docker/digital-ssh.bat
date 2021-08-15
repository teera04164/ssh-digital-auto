for /f "delims== tokens=1,2" %%G in (config.txt) do set %%G=%%H

..\bin\putty.exe -ssh root@%IP_ADDRESS% -pw %PASSWORD%

pause;