@echo off
setlocal enabledelayedexpansion

set counter=1

for %%f in (*.*) do (
    if /i not "%%f"=="%~nx0" (
        set "ext=%%~xf"
        ren "%%f" "!counter!!ext!"
        echo Renamed: %%f -^> !counter!!ext!
        set /a counter+=1
    )
)

echo Done. %counter% file(s) renamed.
pause
