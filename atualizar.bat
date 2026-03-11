@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo ========================================
echo   ATUALIZANDO PEDIDO MEDICO LAB
echo ========================================
echo.

:: Pedir mensagem do commit
set /p MSG="Descreva a mudança feita: "

if "%MSG%"=="" set MSG=atualizacao do sistema

echo.
echo [1/3] Adicionando arquivos...
git add -A

echo [2/3] Salvando no Git...
git commit -m "%MSG%"

echo [3/3] Enviando para o GitHub e Vercel...
git push
npx vercel --prod

echo.
echo ========================================
echo   PRONTO! Sistema atualizado!
echo ========================================
echo.
pause
