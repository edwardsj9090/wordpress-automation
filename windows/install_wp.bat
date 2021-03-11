@echo off

echo.
echo This will download and install wordpress...
echo.
echo Downloading latest WordPress zip file to the user's desktop...
cd %USERPROFILE%\Desktop\
echo.
curl -O https://wordpress.org/latest.zip
echo.
xcopy "latest\wordpress" "%SYSTEMDRIVE%\test\"
