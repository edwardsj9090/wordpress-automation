@echo off

echo.
echo This will download and install wordpress...
echo.
echo Downloading and extracting latest WordPress zip file to the user's desktop...
cd %USERPROFILE%\Desktop\
echo.
curl -O https://wordpress.org/latest.zip
tar -xf latest.zip
echo.
xcopy /I /H /Y "latest\wordpress" "%SYSTEMDRIVE%\test\wordpress\"
echo.
pause
