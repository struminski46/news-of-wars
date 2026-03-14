@echo off
cd /d "C:\Users\emeio\CLAUDE IA\News of Wars"

:: Adiciona todos os arquivos novos ou modificados
git add .

:: Cria um commit com a data de hoje
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set DATA=%datetime:~6,2%/%datetime:~4,2%/%datetime:~0,4%
git commit -m "Atualizacao diaria - %DATA%"

:: Envia para o GitHub
git push origin main
