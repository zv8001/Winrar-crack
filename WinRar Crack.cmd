:: __      __.__                             __                                      
::/  \    /  \__| ________________ _______  |  | __ ____ ___.__. ____   ____   ____  
::\   \/\/   /  |/    \_  __ \__  \\_  __ \ |  |/ // __ <   |  |/ ___\_/ __ \ /    \ 
:: \        /|  |   |  \  | \// __ \|  | \/ |    <\  ___/\___  / /_/  >  ___/|   |  \
::  \__/\  / |__|___|  /__|  (____  /__|    |__|_ \\___  > ____\___  / \___  >___|  /
::       \/          \/           \/             \/    \/\/   /_____/      \/     \/ 
:: v1.3b by zv800 https://www.youtube.com/channel/UCg_zcniW0TZzvHSoIGMVvTw


@echo off
::Force Admin
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
	
	
::Check if winrar is installed
goto CheckWinRarInstall

::Make a WinRar key file
:KeyGen 
del rarreg.tmp
echo RAR registration data>> rarreg.tmp
echo Full Trial>> rarreg.tmp
echo Unlimited Company License>> rarreg.tmp
echo UID=b8ecdb2e55d9ba48a249>>rarreg.tmp
echo 6412212250a24972f855bed69079b5ff75451ef6e808bf3853c16b>> rarreg.tmp
echo fd6364209fe0f44cb41c60fce6cb5ffde62890079861be57638717>> rarreg.tmp
echo 7131ced835ed65cc743d9777f2ea71a8e32c7e593cf66794343565>> rarreg.tmp
echo b41bcf56929486b8bcdac33d50ecf773996090e72c8eb00502e6af>> rarreg.tmp
echo d45fd1090c84fa0b92cc4a827bcdb6a2426035fd2629965395541e>> rarreg.tmp
echo 1f3e43e76f7c1bdd0c7366645811f9c55f4c51832d6239426042fc>> rarreg.tmp
echo e6b9e4c8ce0cd44ae16dd3569fefe527dc451d2104dd1677683626>> rarreg.tmp
goto Install

::Install the WinRar key file
:Install
copy "rarreg.tmp" "C:\Program Files\WinRAR"
copy "rarreg.tmp" "C:\Program Files (x86)\WinRAR"
ren "C:\Program Files\WinRAR\rarreg.tmp" "rarreg.key"
ren "C:\Program Files (x86)\WinRAR\rarreg.tmp" "rarreg.key"
cls
goto Done

:Done
echo WinRAR Keygen "v1.3b by zv800 https://www.youtube.com/channel/UCg_zcniW0TZzvHSoIGMVvTw"
echo.
echo Done! you can now open winrar
pause
exit

:Error
echo WinRAR Keygen "v1.3b by zv800 https://www.youtube.com/channel/UCg_zcniW0TZzvHSoIGMVvTw"
echo.
echo Winrar is already is licensed. 
pause
exit

::Check Install Path 1
:CheckPath1
if exist "C:\Program Files\WinRAR\rarreg.key" (
    goto Error
) else (
    goto CheckPath2
)

::Cehck Install Path2
:CheckPath2
if exist "C:\Program Files (x86)\WinRAR\rarreg.key" (
    goto Error
) else (
    goto KeyGen
)


:CheckWinRarInstall

if exist "C:\Program Files (x86)\WinRAR\" (
    goto CheckPath1
) else (
    echo.
)
if exist "C:\Program Files\WinRAR\" (
    goto CheckPath1
) else (
    goto NoWinRar
)

:NoWinRar
echo WinRAR Keygen "v1.3b by zv800 https://www.youtube.com/channel/UCg_zcniW0TZzvHSoIGMVvTw"
echo.
echo Error you do not have winrar installed.
pause
exit
