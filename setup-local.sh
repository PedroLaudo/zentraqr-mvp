#!/bin/bash
echo "========================================"
echo "   Menu QR - Setup Local Linux/Mac"
echo "========================================"
echo ""

# Verificar Node.js
echo "[1/6] A verificar Node.js..."
if ! command -v node &> /dev/null; then
    echo "ERRO: Node.js não instalado!"
    echo "Por favor instale Node.js v18 ou v20 de: https://nodejs.org/"
    exit 1
fi
echo "Node.js: $(node -v)"
echo ""

# Verificar Python
echo "[2/6] A verificar Python..."
if ! command -v python3 &> /dev/null; then
    echo "ERRO: Python não instalado!"
    echo "Por favor instale Python 3.10+"
    exit 1
fi
echo "Python: $(python3 --version)"
echo ""

# Setup Backend
echo "[3/6] A configurar Backend..."
cd backend
if [ ! -f .env ]; then
    cp .env.local .env
    echo "Ficheiro .env criado no backend"
fi

# Criar ambiente virtual se não existir
if [ ! -d venv ]; then
    echo "A criar ambiente virtual..."
    python3 -m venv venv
fi

# Ativar ambiente virtual e instalar dependências
echo "A instalar dependências do backend..."
source venv/bin/activate
pip install -r requirements.txt -q
cd ..
echo "Backend configurado!"
echo ""

# Setup Frontend
echo "[4/6] A configurar Frontend..."
cd frontend
if [ ! -f .env ]; then
    cp .env.local .env
    echo "Ficheiro .env criado no frontend"
fi
echo "A instalar dependências do frontend..."
npm install --legacy-peer-deps --silent
cd ..
echo "Frontend configurado!"
echo ""

echo "========================================"
echo "   Setup concluído com sucesso!"
echo "========================================"
echo ""
echo "Para iniciar a aplicação:"
echo ""
echo "  1. Abrir terminal na pasta 'backend' e executar:"
echo "     source venv/bin/activate"
echo "     uvicorn server:app --host 0.0.0.0 --port 8001 --reload"
echo ""
echo "  2. Abrir outro terminal na pasta 'frontend' e executar:"
echo "     npm start"
echo ""
echo "  3. Aceder a: http://localhost:3000/admin/login"
echo "     Email: admin@demo.com"
echo "     Password: admin123"
echo ""
