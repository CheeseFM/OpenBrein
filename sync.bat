@echo off
REM Delete all contents of the target directory
rmdir /S /Q "C:\Users\jelle\Quartz\OpenBrein\content"
mkdir "C:\Users\jelle\Quartz\OpenBrein\content"

REM Copy contents from source to target directory
xcopy "C:\Users\jelle\iCloudDrive\iCloud~md~obsidian\OpenBrein\*" "C:\Users\jelle\Quartz\OpenBrein\content" /E /H /C /I

REM Change to the Quartz directory
cd /d C:\Users\jelle\Quartz\OpenBrein

REM Run the Quartz sync command
npx quartz sync

REM Pause to see the output
pause