@echo off

echo.
echo Enabling IIS (Windows Web Server)...
dism /online /Enable-Feature /FeatureName:IIS-WebServer /All
echo.
:: WORK IN PROGRESS
:: 
:: GOING TO ADD IN THE PIECE THAT CREATES THE VIRTUAL DIRECTORIES IN IIS LATER ON
::
echo This will download and install wordpress...
echo.
echo Downloading and extracting latest WordPress zip file to the user's desktop...
cd %USERPROFILE%\Desktop\
echo.
curl -O https://wordpress.org/latest.zip
tar -xf latest.zip
echo.
move "wordpress" "%SYSTEMDRIVE%\inetpub\wwwroot\"
echo.
echo Cleaning up downloaded files...
del /q /s %USERPROFILE%\Desktop\latest.zip
echo.
echo Complete :)
pause
