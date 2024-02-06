@echo off
setlocal enabledelayedexpansion

color 9
echo Minecraft Server Install script
set /p foldername=Please enter the name of the folder you want to create: 

color 7
echo Choose the Minecraft version:
echo 1. 1.8.8
echo 2. 1.9
echo 3. 1.12.2
echo 4. 1.16.3
echo 5. 1.16.4
echo 6. 1.16.5
echo 7. 1.17
echo 8. 1.18
echo 9. 1.19
echo 10. 1.19.4
echo 11. 1.20.1
echo 12. 1.20.2
echo 13. 1.20.4
set /p version=Please choose a version (1, 13):

if "%version%"=="1" (
    start https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
) else if "%version%"=="2" (
    start https://cdn.getbukkit.org/spigot/spigot-1.9-R0.1-SNAPSHOT-latest.jar
) else if "%version%"=="3" (
    start https://cdn.getbukkit.org/spigot/spigot-1.12.2.jar
) else if "%version%"=="4" (
    start https://cdn.getbukkit.org/spigot/spigot-1.16.3.jar
) else if "%version%"=="5" (
    start https://cdn.getbukkit.org/spigot/spigot-1.16.4.jar
) else if "%version%"=="6" (
    start https://cdn.getbukkit.org/spigot/spigot-1.16.5.jar
) else if "%version%"=="7" (
    start https://download.getbukkit.org/spigot/spigot-1.17.jar
) else if "%version%"=="8" (
    start https://download.getbukkit.org/spigot/spigot-1.18.jar
) else if "%version%"=="9" (
    start https://download.getbukkit.org/spigot/spigot-1.19.jar
) else if "%version%"=="10" (
    start https://download.getbukkit.org/spigot/spigot-1.19.4.jar
) else if "%version%"=="11" (
    start https://download.getbukkit.org/spigot/spigot-1.20.1.jar
) else if "%version%"=="12" (
    start https://download.getbukkit.org/spigot/spigot-1.20.2.jar
) else if "%version%"=="13" (
    start https://download.getbukkit.org/spigot/spigot-1.20.4.jar
) else (
    echo [Invalid selection. Please choose 1-13.]
    pause
    exit /b
)

color 7
set /p "server_memory=Please enter the server memory size in GB: "
color 9
set /p "downloaded_file=Please enter the name of the downloaded file (with file extension): "

set "folder_path=%foldername%\"

echo [Creating the folder %folder_path%...]
mkdir "%folder_path%"

echo [Creating the file %folder_path%\start.bat...]
(
    echo @echo off
    echo java -Xmx!server_memory!G -Xms!server_memory!G -jar !downloaded_file! nogui
    echo exit /b
) > "%folder_path%\start.bat"

color 2
echo [The server is ready! Have fun playing!]
pause
exit /b
