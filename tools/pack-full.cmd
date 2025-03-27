@echo off

mkdir ..\..\Samsung-Drivers-Release
del ..\..\Samsung-Drivers-Release\Samsung-Drivers-Full.7z

mkdir Samsung-Drivers-Full
mkdir Samsung-Drivers-Full\apps
mkdir Samsung-Drivers-Full\components
mkdir Samsung-Drivers-Full\definitions
xcopy /cheriky ..\apps Samsung-Drivers-Full\apps
xcopy /cheriky ..\components\ANYSOC Samsung-Drivers-Full\components\ANYSOC
xcopy /cheriky ..\components\Devices Samsung-Drivers-Full\components\Devices
xcopy /cheriky ..\components\QC8150 Samsung-Drivers-Full\components\QC8150
xcopy /cheriky ..\components\QC7325 Samsung-Drivers-Full\components\QC7325
xcopy /cheriky ..\definitions Samsung-Drivers-Full\definitions

"7z.exe" a -t7z -r ..\..\Samsung-Drivers-Release\Samsung-Drivers-Full.7z Samsung-Drivers-Full\*

rmdir /Q /S Samsung-Drivers-Full