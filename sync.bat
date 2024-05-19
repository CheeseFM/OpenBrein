@echo off
REM Delete all contents of the target directory
rmdir /S /Q "C:\Users\jelle\Quartz\OpenBrein\content"
mkdir "C:\Users\jelle\Quartz\OpenBrein\content"

REM Copy contents from source to target directory
xcopy "C:\Users\jelle\iCloudDrive\iCloud~md~obsidian\OpenBrein\*" "C:\Users\jelle\Quartz\OpenBrein\content" /E /H /C /I

REM Remove the "3 - Templates" folder from the target directory if it exists
if exist "C:\Users\jelle\Quartz\OpenBrein\content\3 - Templates" (
    rmdir /S /Q "C:\Users\jelle\Quartz\OpenBrein\content\3 - Templates"
)

REM Change to the Quartz directory
cd /d C:\Users\jelle\Quartz\OpenBrein

REM Run the Quartz sync command
npx quartz sync

REM Pause to see the output
pause
