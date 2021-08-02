@echo off
echo.
echo Installing web server components...
timeout /t 3
echo.
dism /online /Enable-Feature /FeatureName:IIS-WebServer /All
echo.
echo If you are prompted to reboot, say NO.
echo.
echo This will download and install wordpress...
timeout /t 3
echo.
echo Downloading and extracting latest WordPress zip file to the user's desktop...
cd %userprofile%\Desktop\
echo.
curl -O https://wordpress.org/latest.zip
tar -xf latest.zip
echo.
move "wordpress" "%systemdrive%\inetpub\wwwroot"
echo.
echo Creating web directories...
timeout /t 3
echo.
%systemroot%\System32\inetsrv\appcmd.exe add vdir /app.name:"Default Web Site/" /path:/wordpress /physicalPath:%systemdrive%\inetpub\wwwroot\wordpress
echo.
echo Cleaning up downloaded files...
del /q /s %userprofile%\Desktop\latest.zip
echo.
echo Complete
pause
