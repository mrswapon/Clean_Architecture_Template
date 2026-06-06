# Phone on SAME WiFi as this PC (no USB, no public IP needed).
Write-Host "Flutter → LAN API http://10.10.11.78:8000/api/v1" -ForegroundColor Green
Write-Host "Start backend first: cd backend; .\serve-dev.ps1" -ForegroundColor Yellow
flutter run --dart-define=BASE_URL=http://10.10.11.78:8000/api/v1
