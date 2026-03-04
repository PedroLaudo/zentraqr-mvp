# Menu QR - Sistema de Pedidos para Restaurantes

Sistema completo para pedidos em restaurantes via QR Code, com interface para clientes e painel administrativo.

## Requisitos

- **Node.js v18 ou v20 LTS** (NÃO usar v24, causa erros de compatibilidade)
- **Python 3.10+**
- **MongoDB** (utiliza MongoDB Atlas)

## Estrutura do Projeto

```
├── backend/          # API FastAPI
│   ├── server.py     # Servidor principal
│   ├── .env.local    # Configuração local (copiar para .env)
│   └── requirements.txt
├── frontend/         # Interface React
│   ├── src/
│   ├── .env.local    # Configuração local (copiar para .env)
│   └── package.json
└── scripts/
    └── seed_data.py  # Script para popular a base de dados
```

## Instalação e Execução Local

### 1. Configurar o Backend

```bash
cd backend

# Copiar ficheiro de configuração local
copy .env.local .env    # Windows
# ou
cp .env.local .env      # Linux/Mac

# Criar ambiente virtual
python -m venv venv

# Ativar ambiente virtual
venv\Scripts\activate   # Windows
# ou
source venv/bin/activate  # Linux/Mac

# Instalar dependências
pip install -r requirements.txt

# Iniciar o servidor
uvicorn server:app --host 0.0.0.0 --port 8001 --reload
```

### 2. Configurar o Frontend (num novo terminal)

```bash
cd frontend

# Copiar ficheiro de configuração local
copy .env.local .env    # Windows
# ou
cp .env.local .env      # Linux/Mac

# Instalar dependências (usar --legacy-peer-deps)
npm install --legacy-peer-deps

# Iniciar o servidor de desenvolvimento
npm start
```

### 3. Aceder à Aplicação

- **Frontend (Cliente):** http://localhost:3000
- **Painel Admin:** http://localhost:3000/admin/login
- **API Backend:** http://localhost:8001/api

### Credenciais de Teste

- **Email:** admin@demo.com
- **Password:** admin123

## Resolução de Problemas

### Erro: Cannot find module 'ajv/dist/compile/codegen'
**Causa:** Versão do Node.js incompatível (v24+)
**Solução:** Instalar Node.js v18 ou v20 LTS

```bash
# Verificar versão do Node
node -v

# Se for v24+, fazer downgrade para v20
# Descarregar de: https://nodejs.org/en/download/
```

### Erro 404 no Login
**Causa:** Backend não está a correr ou URL incorreta
**Solução:** 
1. Verificar se o backend está a correr na porta 8001
2. Verificar se o ficheiro `frontend/.env` contém `REACT_APP_BACKEND_URL=http://localhost:8001`

### Erro de CORS
**Causa:** Origem não permitida
**Solução:** Verificar se `backend/.env` contém `CORS_ORIGINS="http://localhost:3000"`

## Funcionalidades

### Interface do Cliente
- Visualização do menu por categorias
- Carrinho de compras
- Seleção de quantidade e extras
- Observações no pedido
- Pagamento online (Stripe) ou no balcão
- Acompanhamento do estado do pedido em tempo real

### Painel Administrativo
- Dashboard com estatísticas
- Gestão de pedidos em tempo real
- Histórico de pedidos
- Gestão de menu (categorias e produtos)
- Configurações do restaurante (nome, logo, cores)

## Tecnologias

- **Frontend:** React, Tailwind CSS, Socket.IO Client
- **Backend:** FastAPI, Motor (MongoDB async), PyJWT
- **Base de Dados:** MongoDB Atlas
- **Pagamentos:** Stripe (modo de teste)
