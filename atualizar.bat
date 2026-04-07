@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo ========================================
echo   ATUALIZANDO PEDIDO MEDICO LAB
echo ========================================
echo.

echo [0/4] Sincronizando CSV de medicos...
powershell -NoProfile -Command "$ultimo = Get-ChildItem -Path . -Filter 'medicos_extraidos_*.csv' | Sort-Object Name -Descending | Select-Object -First 1; if ($ultimo) { Copy-Item $ultimo.FullName 'medicos_extraidos.csv' -Force; Write-Host ('CSV sincronizado: ' + $ultimo.Name + ' -> medicos_extraidos.csv') } else { Write-Host 'Nenhum medicos_extraidos_*.csv encontrado.' }"
echo.

:: Pedir mensagem do commit
set /p MSG="Descreva a mudança feita: "

if "%MSG%"=="" set MSG=atualizacao do sistema

echo.
echo [1/4] Adicionando arquivos...
git add -A

echo [2/4] Salvando no Git...
git commit -m "%MSG%"

echo [3/4] Enviando para o GitHub e Vercel...
git push


echo.
echo ========================================
echo   PRONTO! Sistema atualizado!
echo ========================================
echo.
pause
