# Script: auto_report.ps1
# Tac gia:Lê Hồng Minh
# Ngay tao: 10/28/2026

Write-Host "Dang loc log..."

"===BAO CAO LOI===" > logs/auto_report.txt
Get-Content logs/studio.log | Select-String "ERROR" >> logs/auto_report.txt

Write-Host "Hoan thanh"