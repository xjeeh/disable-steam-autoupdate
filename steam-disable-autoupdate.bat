@echo off
SETLOCAL=ENABLEDELAYEDEXPANSION

:workspace
	set temporalFilesPath="%temp%\disable-steam-auto-update-script"
	set steamappsAbsolutePath="D:\SteamLibrary\steamapps"

:customLineVariables
	set customAutoUpdateLine=	"AutoUpdateBehavior"		"1"

:createTemporalFolder

	if not exist %temporalFilesPath% (
		mkdir %temporalFilesPath%
	)

:fileProcessing
	for %%f in (%steamappsAbsolutePath%\*.acf) do (
		
		:: Counting number of lines and storing them into memory
		set count=0
		for /f "delims=" %%a in (%%f) do (
			set /a count=!count! + 1
			set line!count!=%%a
		)

		:: Checking if the autoupdate is already disabled
		if not !line18!==!customAutoUpdateLine! (
			
			:: Get the game name
			for /f "tokens=1,2 delims=	" %%i in ("!line6!") do (
				set gameName=%%j
			)
										
			:: Change the auto update
			set line18=!customAutoUpdateLine!
			
			:: Write the original file with the modified line into a temporal file
			echo !line1!> %temporalFilesPath%\%%~nxf
			for /L %%i in (2, 1, !count!) do (
				echo !line%%i!>> %temporalFilesPath%\%%~nxf
			)
			
			:: Replace the original file with the modified file
			copy "%temporalFilesPath%\%%~nxf" "%steamappsAbsolutePath%\%%~nxf"
		)
	)

:end