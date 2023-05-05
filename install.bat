@echo Creating scheduled task
@set file= "%~dp0steam-disable-autoupdate.bat"
@echo %file%
@schtasks /create /sc HOURLY /tn DisableSteamAutoUpdate /tr %file%
@echo Finished
@pause