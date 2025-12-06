# Push all changes to GitHub

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Pushing to GitHub: itxhamzaasim/EmpowerYou" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

try {
    $gitVersion = git --version
    Write-Host "✓ Git found" -ForegroundColor Green
} catch {
    Write-Host "✗ Git not found. Please use GitHub Desktop." -ForegroundColor Red
    Write-Host ""
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit
}

Write-Host ""
Write-Host "Staging all changes..." -ForegroundColor Yellow
git add -A

Write-Host "✓ Files staged" -ForegroundColor Green
Write-Host ""

Write-Host "Files to commit:" -ForegroundColor Cyan
git status --short
Write-Host ""

Write-Host "Committing..." -ForegroundColor Yellow
git commit -m "Switch to Vercel deployment with Supabase - Remove Netlify and local server files"

Write-Host "✓ Committed" -ForegroundColor Green
Write-Host ""

Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "✓ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "View: https://github.com/itxhamzaasim/EmpowerYou" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "⚠️  Push might need authentication" -ForegroundColor Yellow
    Write-Host "Use GitHub Desktop to push instead" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

