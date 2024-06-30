@echo off
:: Créditos: Creado por tweakstech

:: Desactivar AutoAdminLogon para Grupo de Trabajo
:: ------------------------------------------------
:: Eliminar valores del registro

:: Eliminar valores del registro
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d "0" /f

:: Confirmar desactivación
echo Configuración para Grupo de Trabajo desactivada.
pause
