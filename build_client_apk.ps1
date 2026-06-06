# Build release APK for remote clients (uses your current public IP).
# Requirements: backend running, port 8000 forwarded on router, firewall open.

$ErrorActionPreference = "Stop"

Write-Host "Fetching public IP..." -ForegroundColor Cyan
try {
    $publicIp = (Invoke-RestMethod -Uri "https://api.ipify.org?format=json" -TimeoutSec 15).ip
} catch {
    Write-Host "Could not detect public IP. Set it manually:" -ForegroundColor Yellow
    $publicIp = Read-Host "Public IP"
}

$baseUrl = "http://${publicIp}:8000/api/v1"
Write-Host ""
Write-Host "API URL for this APK: $baseUrl" -ForegroundColor Green
Write-Host "Ensure backend is running: cd backend; .\serve-dev.ps1" -ForegroundColor Yellow
Write-Host ""

Set-Location $PSScriptRoot
flutter build apk --release --dart-define=BASE_URL=$baseUrl

if ($LASTEXITCODE -eq 0) {
    $apk = Join-Path $PSScriptRoot "build\app\outputs\flutter-apk\app-release.apk"
    Write-Host ""
    Write-Host "Done. Send this file to your client:" -ForegroundColor Green
    Write-Host "  $apk"
}
