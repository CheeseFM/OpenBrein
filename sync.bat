@echo off
REM Batch script to sync iCloud directory with local directory and run OpenBrein sync

REM Mirror the contents of the source directory to the destination directory using Robocopy, excluding index.md and '4 - Templates'
robocopy "C:\Users\jelle\iCloudDrive\iCloud~md~obsidian\OpenBrein" "C:\Users\jelle\OpenBrein\content" /MIR /E

REM Change directory to the OpenBrein folder
cd "C:\Users\jelle\OpenBrein"

REM Run the Quartz sync command
npx quartz sync

PAUSE
