Write-Host "Pulling backend..."
Set-Location backend; git pull; Set-Location ..
Write-Host "Pulling frontend..."
Set-Location frontend; git pull; Set-Location ..
Write-Host "Rebuild and start containers..."
docker compose up -d --build