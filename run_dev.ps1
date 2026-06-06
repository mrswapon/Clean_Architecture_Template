$backendConnect = "C:\Users\mdnur\StudioProjects\mouchak_manager\backend\connect-device.ps1"
if (Test-Path $backendConnect) {
    & $backendConnect
    if ($LASTEXITCODE -ne 0) { exit 1 }
} else {
    $adb = "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe"
    & $adb reverse tcp:8000 tcp:8000
    if ($LASTEXITCODE -ne 0) { exit 1 }
}

Write-Host "Running Flutter app (API: http://127.0.0.1:8000/api/v1)..." -ForegroundColor Green
flutter run --dart-define=BASE_URL=http://127.0.0.1:8000/api/v1
