# 📌 Mini Pinterest

Projeto desenvolvido em **Ruby on Rails** inspirado no Pinterest, com o objetivo de reproduzir algumas das principais características da plataforma em uma aplicação web.

O Mini Pinterest permite trabalhar conceitos fundamentais do desenvolvimento Full Stack com Rails, como autenticação de usuários, persistência de dados, relacionamentos entre tabelas e construção de interfaces dinâmicas.

## Funcionalidades

- 👤 Cadastro e autenticação de usuários 
- 🔐 Login e gerenciamento de sessão
- 📌 Criação e gerenciamento de publicações
- 💬 Sistema de comentários
- 👥 Associação de conteúdos aos usuários
- 🖼️ Interface inspirada no Pinterest
- 💾 Persistência dos dados em banco de dados

## 🛠️ Tecnologias

O projeto foi desenvolvido utilizando:

- Ruby on Rails
- HTML
- CSS
- JavaScript
- Devise
- Banco de dados integrado ao Rails
- Docker


## Arquitetura

O projeto utiliza o padrão **MVC (Model-View-Controller)** adotado pelo Ruby on Rails.

app/
├── controllers/    # Controle das requisições
├── models/         # Regras e relacionamentos dos dados
├── views/          # Interface da aplicação
├── assets/         # Estilos e recursos visuais
└── javascript/     # Scripts da aplicação

config/             # Configurações e rotas
db/                 # Migrations e estrutura do banco
test/               # Testes da aplicação
