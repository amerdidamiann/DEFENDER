@echo off
taskkill /f /im explorer.exe
echo no cerrar este cmd se cerrara solo al terminar.

takeown /F "C:\Windows\System32\SecurityHealthService.exe" /A
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
sc config WinDefend start= disabled >nul 2>&1
sc stop WinDefend >nul 2>&1
sc stop SecurityHealthService >nul 2>&1
sc config SecurityHealthService start=disabled >nul 2>&1
sc stop MsMpSvc >nul 2>&1
sc config MsMpSvc start=disabled >nul 2>&1
net stop wuauserv >nul 2>&1
net stop UsoSvc >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
taskkill /f /im SecurityHealthSystray.exe >nul 2>&1
taskkill /f /im SecurityHealthHost.exe >nul 2>&1
taskkill /f /im SecurityHealthService.exe >nul 2>&1
taskkill /f /im MsMpEng.exe >nul 2>&1
taskkill /f /im MpCmdRun.exe >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NisSrv" /v "Start" /t REG_DWORD /d 4 /f
taskkill /f /im SecurityHealthSystray.exe >nul 2>&1
taskkill /f /im SecurityHealthHost.exe >nul 2>&1
taskkill /f /im SecurityHealthService.exe >nul 2>&1
taskkill /f /im MsMpEng.exe >nul 2>&1
taskkill /f /im MpCmdRun.exe >nul 2>&1
taskkill /f /im smartscreen.exe >nul 2>&1
taskkill /IM WmiApSrv.exe /F /T >nul 2>&1
taskkill /IM MsMpEng.exe /F /T >nul 2>&1
taskkill /IM MpCmdRun.exe /F /T >nul 2>&1
takeown /F "C:\Windows\System32\SecurityHealthService.exe" /A >nul 2>&1
ren "C:\Windows\System32\SecurityHealthService.exe" SecurityHealthService.dat >nul 2>&1
del "C:\Windows\System32\SecurityHealthService.dat" >nul 2>&1
takeown /F "C:\Windows\System32\smartscreen.exe" /A >nul 2>&1
icacls "C:\Windows\System32\smartscreen.exe" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\System32\smartscreen.exe" /grant %USERNAME%:(F) /T >nul 2>&1
ren "C:\Windows\System32\smartscreen.exe" smartscreen.dat >nul 2>&1
del "C:\Windows\System32\smartscreen.dat" >nul 2>&1
takeown /F "C:\Windows\System32\SecurityHealthSystray.exe" /A >nul 2>&1
ren "C:\Windows\System32\SecurityHealthSystray.exe" SecurityHealthSystray.dat >nul 2>&1
del "C:\Windows\System32\SecurityHealthSystray.dat" >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1
echo S | takeown /F "C:\Program Files\Windows Defender Advanced Threat Protection" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender Advanced Threat Protection" >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\Program Files\Windows Defender" /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\Program Files\Windows Security" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Security" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Security" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Security" >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\ProgramData\Microsoft\Windows Defender" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1
echo S | takeown /F "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\shellext.dat" /A >nul 2>&1
ren "C:\Program Files\Windows Defender\shellext.dll" shellext.dat >nul 2>&1
del "C:\Program Files\Windows Defender\shellext.dat" >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\ProgramData\Microsoft\Windows Security Health" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Security Health" >nul 2>&1
timeout /t 3 >nul 2>&1
ren "C:\Program Files\Windows Defender\MpClient.dll" MpClient.dat >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\MpClient.dat" /A >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\shellext.dat" /A >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\es-ES" /R /A >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\es-ES" /A >nul 2>&1
ren "C:\Program Files\Windows Defender\ProtectionManagement.dll" ProtectionManagement.dat >nul 2>&1
del "C:\Program Files\Windows Defender\ProtectionManagement.dat" >nul 2>&1
del "C:\Program Files\Windows Defender\shellext.dat" >nul 2>&1
del "C:\Program Files\Windows Defender\MpClient.dat" >nul 2>&1
del "C:\Program Files\Windows Defender\ProtectionManagement.dat" >nul 2>&1
takeown /F "C:\Windows\System32\SecurityHealthService.exe" /A >nul 2>&1
sc stop SecurityHealthService >nul 2>&1
sc config SecurityHealthService start=disabled >nul 2>&1
sc stop MsMpSvc >nul 2>&1
sc config MsMpSvc start=disabled >nul 2>&1
net stop wuauserv >nul 2>&1
net stop UsoSvc >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
taskkill /f /im SecurityHealthSystray.exe >nul 2>&1
taskkill /f /im SecurityHealthHost.exe >nul 2>&1
taskkill /f /im SecurityHealthService.exe >nul 2>&1
taskkill /f /im MsMpEng.exe >nul 2>&1
taskkill /f /im MpCmdRun.exe >nul 2>&1
taskkill /f /im SecurityHealthSystray.exe >nul 2>&1
taskkill /f /im SecurityHealthHost.exe >nul 2>&1
taskkill /f /im SecurityHealthService.exe >nul 2>&1
taskkill /f /im MsMpEng.exe >nul 2>&1
taskkill /f /im MpCmdRun.exe >nul 2>&1
taskkill /f /im smartscreen.exe >nul 2>&1
taskkill /IM WmiApSrv.exe /F /T >nul 2>&1
taskkill /IM MsMpEng.exe /F /T >nul 2>&1
taskkill /IM MpCmdRun.exe /F /T >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /R /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /R /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\Windows\System32\SecurityHealthService.exe" /A >nul 2>&1
ren "C:\Windows\System32\SecurityHealthService.exe" SecurityHealthService.dat >nul 2>&1
del "C:\Windows\System32\SecurityHealthService.dat" >nul 2>&1
takeown /F "C:\Windows\System32\smartscreen.exe" /A >nul 2>&1
icacls "C:\Windows\System32\smartscreen.exe" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\System32\smartscreen.exe" /grant %USERNAME%:(F) /T >nul 2>&1
ren "C:\Windows\System32\smartscreen.exe" smartscreen.dat >nul 2>&1
del "C:\Windows\System32\smartscreen.dat" >nul 2>&1
takeown /F "C:\Windows\System32\SecurityHealthSystray.exe" /A >nul 2>&1
ren "C:\Windows\System32\SecurityHealthSystray.exe" SecurityHealthSystray.dat >nul 2>&1
del "C:\Windows\System32\SecurityHealthSystray.dat" >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable >nul 2>&1
timeout /t 2 >nul 2>&1
takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1
echo S | takeown /F "C:\Program Files\Windows Defender Advanced Threat Protection" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender Advanced Threat Protection" >nul 2>&1
timeout /t 2 >nul 2>&1
takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
timeout /t 2 >nul 2>&1
takeown /F "C:\Program Files\Windows Security" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Security" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Security" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Security" >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\ProgramData\Microsoft\Windows Defender" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1
echo S | takeown /F "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender\shellext.dat" /A >nul 2>&1
ren "C:\Program Files\Windows Defender\shellext.dll" shellext.dat >nul 2>&1
del "C:\Program Files\Windows Defender\shellext.dat" >nul 2>&1
timeout /t 3 >nul 2>&1
takeown /F "C:\ProgramData\Microsoft\Windows Security Health" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Security Health" >nul 2>&1
timeout /t 3 >nul 2>&1

ren "C:\Program Files\Windows Defender\MpClient.dll" MpClient.dat >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\MpClient.dat" /A >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\shellext.dat" /A >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\es-ES" /R /A >nul 2>&1
takeown /F "C:\Program Files\Windows Defender\es-ES" /A >nul 2>&1
ren "C:\Program Files\Windows Defender\ProtectionManagement.dll" ProtectionManagement.dat >nul 2>&1
del "C:\Program Files\Windows Defender\ProtectionManagement.dat" >nul 2>&1
del "C:\Program Files\Windows Defender\shellext.dat" >nul 2>&1
del "C:\Program Files\Windows Defender\MpClient.dat" >nul 2>&1
del "C:\Program Files\Windows Defender\ProtectionManagement.dat" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
echo S | del "C:\Program Files\Windows Defender" >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
echo S | del "C:\Program Files\Windows Defender" >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /R /A >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /R /A >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r" /R /A >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /R /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /R /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\Temp\PendingRenames\f349d17c959dda0162c20100cc0dc01c.amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828_mpoav.dll_f715ad21" /A >nul 2>&1
icacls "C:\Windows\WinSxS\Temp\PendingRenames\f349d17c959dda0162c20100cc0dc01c.amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828_mpoav.dll_f715ad21" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\Temp\PendingRenames\f349d17c959dda0162c20100cc0dc01c.amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828_mpoav.dll_f715ad21" /grant %USERNAME%:(F) /T >nul 2>&1
del /F "C:\Windows\WinSxS\Temp\PendingRenames\f349d17c959dda0162c20100cc0dc01c.amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828_mpoav.dll_f715ad21"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\f" /A >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\f" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\f" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\f"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\r" /A >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\r" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\r" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23\r"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\Backup\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7_mpoav.dll_f715ad21" /A >nul 2>&1
icacls "C:\Windows\WinSxS\Backup\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7_mpoav.dll_f715ad21" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\Backup\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7_mpoav.dll_f715ad21" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\WinSxS\Backup\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7_mpoav.dll_f715ad21"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /A >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\f"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.662_none_adda7506ea107011" /A >nul 2>&1
icacls "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.662_none_adda7506ea107011" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.662_none_adda7506ea107011" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.662_none_adda7506ea107011"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23" /A >nul 2>&1
icacls "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\WinSxS\wow64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_449263e44081ca23"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828"
timeout /t 2 >nul 2>&1

takeown /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r" /A >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r" /grant %USERNAME%:(F) /T >nul 2>&1
echo S | del /F "C:\Windows\servicing\LCU\Package_for_RollupFix~31bf3856ad364e35~amd64~~19041.4291.1.10\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828\r"
timeout /t 2 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\ProgramData\Microsoft\Windows Defender" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

echo S | takeown /F "C:\Program Files\Windows Defender Advanced Threat Protection" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender Advanced Threat Protection" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\ProgramData\Microsoft\Windows Security Health" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Security Health" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F %USERNAME%:F >nul 2>&1
del /F /Q "C:\Program Files\Windows Defender" >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F %USERNAME%:F >nul 2>&1
del /F /Q "C:\Program Files\Windows Defender" >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 2 >nul 2>&1

start explorer.exe
timeout /t 2 >nul 2>&1
shutdown /r /t 3