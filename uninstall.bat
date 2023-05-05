@echo Deleting scheduled task
@schtasks /delete /tn DisableSteamAutoUpdate /f
@echo Finished
@pause