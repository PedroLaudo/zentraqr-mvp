@echo off
echo ========================================
echo    Menu QR - Setup Local Windows
echo ========================================
echo.

:: Verificar versao do Node.js
echo [1/6] A verificar versao do Node.js...
for /f "tokens=1" %%v in ('node -v 2^>nul') do set NODE_VERSION=%%v
if "%NODE_VERSION%"=="" (
    echo ERRO: Node.js nao instalado!
    echo Por favor instale Node.js v18 ou v20 de: https://nodejs.org/
    pause
    exit /b 1
)
echo Node.js: %NODE_VERSION%
echo.

:: Verificar Python
echo [2/6] A verificar Python...
python --version 2>nul
if errorlevel 1 (
    echo ERRO: Python nao instalado!
    echo Por favor instale Python 3.10+ de: https://python.org/
    pause
    exit /b 1
)
echo.

:: Setup Backend
echo [3/6] A configurar Backend...
cd backend
if not exist .env (
    copy .env.local .env
    echo Ficheiro .env criado no backend
)

:: Criar ambiente virtual se nao existir
if not exist venv (
    echo A criar ambiente virtual...
    python -m venv venv
)

:: Ativar ambiente virtual e instalar dependencias
echo A instalar dependencias do backend...
call venv\Scripts\activate.bat
pip install -r requirements.txt -q
cd ..
echo Backend configurado!
echo.

:: Setup Frontend
echo [4/6] A configurar Frontend...
cd frontend
if not exist .env (
    copy .env.local .env
    echo Ficheiro .env criado no frontend
)
echo A instalar dependencias do frontend...
call npm install --legacy-peer-deps --silent
cd ..
echo Frontend configurado!
echo.

echo ========================================
echo    Setup concluido com sucesso!
echo ========================================
echo.
echo Para iniciar a aplicacao:
echo.
echo   1. Abrir terminal na pasta 'backend' e executar:
echo      venv\Scripts\activate
echo      uvicorn server:app --host 0.0.0.0 --port 8001 --reload
echo.
echo   2. Abrir outro terminal na pasta 'frontend' e executar:
echo      npm start
echo.
echo   3. Aceder a: http://localhost:3000/admin/login
echo      Email: admin@demo.com
echo      Password: admin123
echo.
pause
