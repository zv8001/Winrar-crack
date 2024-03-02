:: __      __.__                             __                                      
::/  \    /  \__| ________________ _______  |  | __ ____ ___.__. ____   ____   ____  
::\   \/\/   /  |/    \_  __ \__  \\_  __ \ |  |/ // __ <   |  |/ ___\_/ __ \ /    \ 
:: \        /|  |   |  \  | \// __ \|  | \/ |    <\  ___/\___  / /_/  >  ___/|   |  \
::  \__/\  / |__|___|  /__|  (____  /__|    |__|_ \\___  > ____\___  / \___  >___|  /
::       \/          \/           \/             \/    \/\/   /_____/      \/     \/ 
:: v1.2b by zv800 https://www.youtube.com/channel/UCg_zcniW0TZzvHSoIGMVvTw


@echo off
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
	
copy "rarreg.key" "C:\Program Files\WinRAR"
copy "rarreg.key" "C:\Program Files (x86)\WinRAR"
cls

echo WinRAR Keygen "v1.2b by zv800 https://www.youtube.com/channel/UCg_zcniW0TZzvHSoIGMVvTw"
echo.
echo Done! you can now open winrar
pause
