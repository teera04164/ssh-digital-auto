for /f "delims== tokens=1,2" %%G in (config.txt) do set %%G=%%H

..\bin\plink.exe -ssh root@%IP_ADDRESS% -pw %PASSWORD%  -batch -m %cd%\script.sh

pause;
