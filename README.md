# 🍽️ Menu QR - Sistema de Pedidos para Restaurantes

Aplicação web completa para pedidos em restaurantes via QR Code com frontend mobile-first para clientes e painel administrativo para gestores.

## 🎯 Funcionalidades

### 👥 Cliente (Mobile-First)
- ✅ Leitura de QR Code para acesso direto ao menu
- ✅ Menu digital organizado por categorias
- ✅ Visualização de produtos com fotos, descrições e preços
- ✅ Seleção de extras e adicionais
- ✅ Carrinho de compras interativo
- ✅ Adicionar observações aos pedidos
- ✅ Finalização de pedido
- ✅ Acompanhamento do pedido em tempo real
- ✅ Pagamento online via Stripe
- ✅ Botão para chamar empregado

### 🔐 Administração (Desktop)
- ✅ Sistema de autenticação JWT
- ✅ Dashboard com estatísticas em tempo real
- ✅ Gestão de restaurantes
- ✅ Gestão de mesas com geração automática de QR codes
- ✅ Gestão de categorias e produtos
- ✅ Gestão de extras/adicionais
- ✅ Visualização de pedidos em tempo real
- ✅ Atualização de estado dos pedidos
- ✅ Histórico de pedidos
- ✅ Estatísticas (faturação, produtos mais vendidos)
- ✅ Notificações de chamadas de empregado

## 🚀 Tecnologias

### Backend
- **FastAPI** - Framework web Python assíncrono
- **MongoDB** - Base de dados NoSQL
- **Socket.IO** - WebSockets para atualizações em tempo real
- **JWT** - Autenticação segura
- **Stripe** - Processamento de pagamentos
- **QRCode** - Geração de códigos QR

### Frontend
- **React 19** - Framework JavaScript
- **React Router** - Navegação SPA
- **Axios** - Cliente HTTP
- **Socket.IO Client** - Comunicação em tempo real
- **Framer Motion** - Animações fluidas
- **Tailwind CSS** - Estilização moderna
- **Lucide React** - Ícones

## 🎨 Design

### Tema "Savory Pop"
- **Cores Primárias**: 
  - Zest Orange (#FF5500) - CTAs e acentos
  - Fresh Basil (#10B981) - Sucesso e estados positivos
  - Mac 'n Cheese (#F59E0B) - Destaques
  
- **Tipografia**:
  - Headings: Outfit (Google Fonts)
  - Body: Plus Jakarta Sans (Google Fonts)

## 🔐 Credenciais de Teste

**Admin**
- Email: `admin@demo.com`
- Password: `admin123`

**Stripe**
- Chave de teste já configurada: `sk_test_emergent`

## 📊 Base de Dados

### Popular Base de Dados
```bash
cd /app/backend
python seed_data.py
```

Isto cria: 1 restaurante, 1 admin, 10 mesas, 6 categorias, 13 produtos

## 🌐 URLs Principais

- Landing: `/`
- Menu: `/menu?restaurant_id={id}&table_id={id}`
- Admin: `/admin/login`
- Dashboard: `/admin/dashboard`

## 📝 Próximas Melhorias

- Gestão completa de menu/mesas no admin (interface visual)
- Sistema de notificações push
- Multi-idioma (PT/EN/ES)
- PWA para instalação
- Sistema de avaliações

---

**Desenvolvido com ❤️ usando Emergent AI**
