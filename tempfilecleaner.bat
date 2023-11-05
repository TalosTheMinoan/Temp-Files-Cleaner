@echo off
setlocal enabledelayedexpansion

:MENU
cls
echo Main Menu
echo 1. Clean Temporary Files
echo 2. Exit
set /p choice=Enter the option number:

if "%choice%"=="1" (
    echo Cleaning temporary files...
    set "tempFolder=%TEMP%"
    set "barSize=50"
    set "count=0"
    set "startTime=!time!"

    for /r "!tempFolder!" %%f in (*) do (
        del "%%f" >nul 2>&1
        set /a "count+=1"
        set /a "percent=(count * 100) / total"
        set "bars="
        for /l %%i in (1,1,!barSize!) do (
            if %%i LEQ !percent! (
                set "bars=!bars!#"
            ) else (
                set "bars=!bars! "
            )
        )
        echo Cleaning: [!bars!] !percent!%%

        rem Delay for a short period (adjust as needed for your preference).
        ping -n 1 -w 1000 127.0.0.1 >nul

        rem Check if 10 seconds have passed before exiting the cleaning process.
        set "endTime=!time!"
        if !startTime! NEQ !endTime! (
            set /a "elapsedTime=!endTime:~6,2!!endTime:~3,2!!endTime:~0,2!-!startTime:~6,2!!startTime:~3,2!!startTime:~0,2!"
            if !elapsedTime! GEQ 10 (
                goto CLEAN_COMPLETE
            )
        )
    )

    :CLEAN_COMPLETE
    echo Temporary files cleaned.
    pause
    goto MENU
)

if "%choice%"=="2" (
    exit
)

:end
endlocal
