@echo off
:: Créditos: Creado por tweakstech

:: Activar AutoAdminLogon para Dominio (AD)
:: ------------------------------------------------
:: Configurar valores en el registro

:: Definir variables
set "DefaultUserName=YourUserName"
set "DefaultPassword=YourPassword"
set "DefaultDomainName=YourDomainName"
set "AutoAdminLogon=1"

:: Agregar valores al registro
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d "%DefaultUserName%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d "%DefaultPassword%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultDomainName /t REG_SZ /d "%DefaultDomainName%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d "%AutoAdminLogon%" /f

:: Confirmar configuración
echo Configuración para Dominio activada.
pause
