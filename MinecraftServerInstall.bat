@echo off
setlocal enabledelayedexpansion

color 9
echo Minecraft Server Install script
set /p foldername=Bitte gib den Namen des Ordners ein, den du erstellen möchtest: 

color 7
echo Wähle die Minecraft-Version:
echo 1. 1.8.8
echo 2. 1.16.5
echo 3. 1.20.4
set /p version=Bitte wähle eine Version (1, 2 oder 3): 

if "%version%"=="1" (
start https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar

) else if "%version%"=="2" (

start https://cdn.getbukkit.org/spigot/spigot-1.16.5.jar

) else if "%version%"=="3" (
start https://download.getbukkit.org/spigot/spigot-1.20.4.jar

color 7
)else if not defined minecraft_version (
    echo [Ungültige Auswahl. Bitte wähle 1, 2 oder 3.[0m
    pause
    exit /b
)

color 2
set /p "server_memory=Bitte gib die Speichergröße des Servers in GB ein: "
color 9
set /p "downloaded_file=Bitte gib den Namen der heruntergeladenen Datei ein (mit Dateiendung): "

set "folder_path=%foldername%\"

echo [Erstelle den Ordner %folder_path%...[0m
mkdir "%folder_path%"

echo [Erstelle die Datei %folder_path%\start.bat...[0m
(
    echo @echo off
    echo java -Xmx!server_memory!G -Xms!server_memory!G -jar !downloaded_file! nogui
    echo exit /b
) > "%folder_path%\start.bat"

color 2
echo [Der Server ist fertig! Viel Spaß beim Spielen![0m
pause
exit /b